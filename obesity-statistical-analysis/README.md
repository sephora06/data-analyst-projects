# Analyse statistique de l’obésité chez les femmes

## Objectif
Ce projet analyse les facteurs associés à l’obésité chez les femmes à partir de données statistiques.  
L’objectif est de tester des hypothèses sur l’âge, l’activité physique et les habitudes alimentaires.

---

## Méthodologie

L’analyse repose sur des tests d’hypothèses :

- Test de comparaison de moyennes (bilatéral et unilatéral)
- Test de proportion
- Utilisation du théorème central limite
- Calcul du z-score et de la p-value
- Intervalles de confiance

Les calculs ont été réalisés avec le langage **R**.

---

## Hypothèses testées

### 1. Âge moyen
- H₀ : l’âge moyen des femmes obèses est égal à celui des non obèses  
- H₁ : les âges moyens sont différents  

### 2. Activité physique
- H₀ : même niveau d’activité physique  
- H₁ : activité physique plus faible chez les femmes obèses  

### 3. Alimentation
- H₀ : même proportion de consommation calorique  
- H₁ : proportion plus élevée chez les femmes obèses  

---

## Résultats principaux

- L’âge n’a pas un impact significatif sur l’obésité  
- L’activité physique est un facteur déterminant  
- L’alimentation joue un rôle important  

---

## Fichiers du projet

- `Code_Dent_Blanche.R` : code complet de l’analyse statistique  
- `rapport.pdf` : rapport détaillé avec interprétation des résultats
- `DataBaseDentBlanche.csv`: base de données

---

## Technologies utilisées

- R
- Statistiques inférentielles
