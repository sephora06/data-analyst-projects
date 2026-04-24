

-- Requête 1: TOP 5 DES GENRES DES OEUVRE LES PLUS REGARDER PAR PAYS.

SELECT 
    p.nom_pays,
    COALESCE(
        GROUP_CONCAT(DISTINCT g.genre ORDER BY stats.nombre DESC SEPARATOR ', '),
        'aucun film visionné dans ce pays'
    ) AS genres_ou_statut
FROM pays p
LEFT JOIN profil pf ON pf.id_pays = p.id_pays
LEFT JOIN historique h ON h.id_profil = pf.id_profil
LEFT JOIN video v ON h.id_video = v.id_video
LEFT JOIN saison s ON v.id_saison = s.id_saison
LEFT JOIN oeuvre o ON s.id_oeuvre = o.id_oeuvre
LEFT JOIN genre_oeuvre go ON o.id_oeuvre = go.id_oeuvre
LEFT JOIN genre g ON g.id_genre = go.id_genre
LEFT JOIN (
    SELECT 
        p2.nom_pays, g2.genre, COUNT(*) AS nombre
    FROM historique h2
    JOIN profil pf2 ON h2.id_profil = pf2.id_profil
    JOIN pays p2 ON pf2.id_pays = p2.id_pays
    JOIN video v2 ON h2.id_video = v2.id_video
    JOIN saison s2 ON v2.id_saison = s2.id_saison
    JOIN oeuvre o2 ON s2.id_oeuvre = o2.id_oeuvre
    JOIN genre_oeuvre go2 ON o2.id_oeuvre = go2.id_oeuvre
    JOIN genre g2 ON g2.id_genre = go2.id_genre
    GROUP BY p2.nom_pays, g2.genre
) AS stats ON stats.nom_pays = p.nom_pays AND stats.genre = g.genre
GROUP BY p.nom_pays
ORDER BY 
    -- mettre les pays avec films d'abord
    genres_ou_statut = 'aucun film visionné dans ce pays' ASC,
    p.nom_pays ASC;






-- Requête 2: NOMBRE DE VISIONNAGES PAR MOIS - pour pouvoir savoir si le nombre de visionnage a augmenter ou diminuer au fil du temps. AVOIR LE MOIS OU ON REGARDE LE PLUS DE D'OEUVRES (le pic)

SELECT 
    mois_complet.mois AS mois,
    IFNULL(GROUP_CONCAT(o.nom_oeuvre ORDER BY o.nom_oeuvre SEPARATOR ', '), 'aucune œuvre visionnée') AS oeuvres_plus_vues,
    IFNULL(MAX(visionnage.total_visio), 0) AS nombre_visionnages
FROM (
    SELECT 1 AS mois_num, 'janvier' AS mois UNION
    SELECT 2, 'février' UNION
    SELECT 3, 'mars' UNION
    SELECT 4, 'avril' UNION
    SELECT 5, 'mai' UNION
    SELECT 6, 'juin' UNION
    SELECT 7, 'juillet' UNION
    SELECT 8, 'août' UNION
    SELECT 9, 'septembre' UNION
    SELECT 10, 'octobre' UNION
    SELECT 11, 'novembre' UNION
    SELECT 12, 'décembre'
) AS mois_complet

LEFT JOIN (
    SELECT 
        MONTH(h.date_vision) AS mois_num,
        s.id_oeuvre,
        COUNT(*) AS total_visio
    FROM historique h
    JOIN video v ON h.id_video = v.id_video
    JOIN saison s ON v.id_saison = s.id_saison
    GROUP BY mois_num, s.id_oeuvre
) AS visionnage ON visionnage.mois_num = mois_complet.mois_num

LEFT JOIN (
    SELECT 
        MONTH(h.date_vision) AS mois_num,
        s.id_oeuvre,
        COUNT(*) AS total_visio
    FROM historique h
    JOIN video v ON h.id_video = v.id_video
    JOIN saison s ON v.id_saison = s.id_saison
    GROUP BY mois_num, s.id_oeuvre
) AS v2 ON v2.mois_num = mois_complet.mois_num AND v2.total_visio = (
    SELECT MAX(v3.total_visio)
    FROM (
        SELECT 
            MONTH(h3.date_vision) AS mois_num,
            s3.id_oeuvre,
            COUNT(*) AS total_visio
        FROM historique h3
        JOIN video v3 ON h3.id_video = v3.id_video
        JOIN saison s3 ON v3.id_saison = s3.id_saison
        GROUP BY mois_num, s3.id_oeuvre
    ) AS v3
    WHERE v3.mois_num = mois_complet.mois_num
)

LEFT JOIN oeuvre o ON o.id_oeuvre = v2.id_oeuvre
GROUP BY mois_complet.mois_num, mois_complet.mois
ORDER BY mois_complet.mois_num;










-- Requête 3: RECOMMANDATION D'ŒUVRE AVEC LES FAVORIS ET LES LANGUES DOUBLÉES  

SELECT
    o.nom_oeuvre,
    COALESCE(fav.nombre_favoris, 0)            AS nombre_favoris,
    COALESCE(doubl.nombre_langues_doublees, 0) AS nombre_langues_doublees
FROM oeuvre o

-- sous-requête pour le nombre de favoris
LEFT JOIN (
    SELECT 
        id_oeuvre,
        COUNT(DISTINCT id_profil) AS nombre_favoris
    FROM favoris
    GROUP BY id_oeuvre
) AS fav
  ON fav.id_oeuvre = o.id_oeuvre

-- sous-requête pour le nombre de langues doublées
LEFT JOIN (
    SELECT 
        o2.id_oeuvre,
        COUNT(DISTINCT ld.id_langue) AS nombre_langues_doublees
    FROM oeuvre o2
    JOIN saison s     ON s.id_oeuvre    = o2.id_oeuvre
    JOIN video v      ON v.id_saison    = s.id_saison
    JOIN langue_doublee ld ON ld.id_video = v.id_video
    GROUP BY o2.id_oeuvre
) AS doubl
  ON doubl.id_oeuvre = o.id_oeuvre

ORDER BY nombre_favoris DESC, nombre_langues_doublees DESC;












-- Requête 4: Requête 4 — Œuvres dont la saison disparaîtra entre le 1er mai de cette année et le 1er mai dans deux ans

SELECT 
    s.id_oeuvre,
    s.nom_saison,
    s.date_fin_disponibilite,
    DATEDIFF(s.date_fin_disponibilite, CURDATE()) AS jours_restants
FROM saison s
WHERE s.date_fin_disponibilite BETWEEN
      MAKEDATE(YEAR(CURDATE()), 1) + INTERVAL 120 DAY
  AND MAKEDATE(YEAR(CURDATE()), 1) + INTERVAL 2 YEAR + INTERVAL 120 DAY
ORDER BY s.date_fin_disponibilite;












-- Requête 5: AFFICHAGE DUU PRIX D'ABONNEMENT EN LA DEVISE DE CHAQUE PAYS 


SELECT 
    p.nom_pays AS pays,
    ta.categorie_abonnement AS type_abonnement,

    ROUND(
        prx.montant_chf *
        CASE 
            WHEN p.nom_pays = 'Allemagne' THEN 1.02
            WHEN p.nom_pays = 'Australie' THEN 1.50
            WHEN p.nom_pays = 'Belgique' THEN 1.02
            WHEN p.nom_pays = 'Cameroun' THEN 650
            WHEN p.nom_pays = 'Canada' THEN 1.20
            WHEN p.nom_pays = 'Chine' THEN 8.00
            WHEN p.nom_pays = 'Congo' THEN 650
            WHEN p.nom_pays = 'Egypte' THEN 50.00
            WHEN p.nom_pays = 'Etat-Unies' THEN 1.10
            WHEN p.nom_pays = 'France' THEN 1.02
            WHEN p.nom_pays = 'Japon' THEN 160.00
            WHEN p.nom_pays = 'Maroc' THEN 11.00
            WHEN p.nom_pays = 'Mexique' THEN 18.00
            WHEN p.nom_pays = 'Suisse' THEN 1
            WHEN p.nom_pays = 'Inde' THEN 93.00
            ELSE 1
        END, 2
    ) AS prix_converti,

    CASE 
        WHEN p.nom_pays = 'Allemagne' THEN 'EUR'
        WHEN p.nom_pays = 'Australie' THEN 'AUD'
        WHEN p.nom_pays = 'Belgique' THEN 'EUR'
        WHEN p.nom_pays = 'Cameroun' THEN 'XAF'
        WHEN p.nom_pays = 'Canada' THEN 'CAD'
        WHEN p.nom_pays = 'Chine' THEN 'CNY'
        WHEN p.nom_pays = 'Congo' THEN 'XAF'
        WHEN p.nom_pays = 'Egypte' THEN 'EGP'
        WHEN p.nom_pays = 'Etat-Unies' THEN 'USD'
        WHEN p.nom_pays = 'France' THEN 'EUR'
        WHEN p.nom_pays = 'Japon' THEN 'JPY'
        WHEN p.nom_pays = 'Maroc' THEN 'MAD'
        WHEN p.nom_pays = 'Mexique' THEN 'MXN'
        WHEN p.nom_pays = 'Suisse' THEN 'CHF'
        WHEN p.nom_pays = 'Inde' THEN 'INR'
        ELSE '❓'
    END AS devise

FROM prix prx
JOIN pays p ON p.id_pays = prx.id_pays
JOIN type_abonnement ta ON ta.id_type_abonnement = prx.id_type_abonnement
ORDER BY p.nom_pays, ta.categorie_abonnement;










-- Requête 6: TRIGGER - AJOUT D'ABONNEMENT CONDITIONNÉ DU À UN AUTRE ULTERIEUREMENT ACTIF  
DELIMITER $$

CREATE TRIGGER check_abonnement_condition
BEFORE INSERT ON abonnement
FOR EACH ROW
BEGIN
    DECLARE nb_abos_actifs INT;

    SELECT COUNT(*) INTO nb_abos_actifs
    FROM abonnement
    WHERE id_compte = NEW.id_compte
      AND id_actif = 1;

    IF nb_abos_actifs > 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = '❌ Ce compte a déjà un abonnement actif.';
    END IF;
END$$

DELIMITER ;
