#creation our database - We import a database from Kaggle but only with women filtered with Excel

setwd("/Users/niamkesephoraemmanuela/Desktop/GitHub/statistique")
getwd()
women <- read.csv("DataBaseDentBlanche.csv", sep = ";", dec = ",")

#selection of variables from the original database 
women2 <- women[, c("age", "weight", "height", "pal", "imc")]

#change variable names 
names(women2) <- c("age", "weight", "height","pal","imc")

#definition of the BMI level scale
women2$imc_level <- ifelse(women2$imc < 16, 0,
                    ifelse(women2$imc < 19, 1,
                    ifelse(women2$imc < 21, 2,
                    ifelse(women2$imc < 25, 3,
                    ifelse(women2$imc < 30, 4,
                    ifelse(women2$imc < 35, 5,
                    ifelse(women2$imc < 40, 6,7)))))))

#define whether a woman is obese or not based on the imc_level
women2$obesity_level <- ifelse(women2$imc_level < 4, 0,1)


#correction of the database with commas and integers 
# age -> integers
women2$age <- as.integer(as.numeric(sub(",", ".", women2$age, fixed = TRUE)))
# height, weight, pal and imc have a comma, we replace it with a dot before converting
women2$height <- as.numeric(sub(",", ".", women2$height, fixed = TRUE))
women2$weight <- as.numeric(sub(",", ".", women2$weight, fixed = TRUE))
women2$pal    <- as.numeric(sub(",", ".", women2$pal, fixed = TRUE))
women2$imc    <- as.numeric(sub(",", ".", women2$imc, fixed = TRUE))
View(women2)

# To extract the database we have created 
write.csv2(women2, "DataBaseDentBlanche.csv", row.names = FALSE)


#-----------------------------------------------------------------------------------------------------------------------------------
#Code for the Central Limit Theorem

#First, we need a vector containing our variable imc_level
imc_level_v <- women2$imc_level

#The proportion of each obesity level in the sample
(sum(imc_level_v == 0)/length(imc_level_v)) *100
(sum(imc_level_v == 1)/length(imc_level_v)) *100
(sum(imc_level_v == 2)/length(imc_level_v)) *100
(sum(imc_level_v == 3)/length(imc_level_v)) *100
(sum(imc_level_v == 4)/length(imc_level_v)) *100
(sum(imc_level_v == 5)/length(imc_level_v)) *100
(sum(imc_level_v == 6)/length(imc_level_v)) *100
(sum(imc_level_v == 7)/length(imc_level_v)) *100

#The proportion for each obesity level
df <- as.data.frame(prop.table(table(imc_level_v)) * 100)
colnames(df) <- c("BMI_Level", "Percentage")
df
# Now shown in decreasing order
df <- df[order(-df$Percentage), ]
df


#here we show the proportion of each imc_level 
props <- table(imc_level_v) / length(imc_level_v) * 100

pie(props,
    main = "BMI level proportions",
    col = rainbow(length(props)),
    labels = paste0(names(props), " (", round(props, 1), "%)"))


#Then we calculate the simple samples for different sizes
#The function
sample_size = function(data, size)
{
  replicate(700, mean(sample(data, size)))
}

mean_5 = sample_size(imc_level_v, 5)
mean_20 = sample_size(imc_level_v, 20)
mean_100 = sample_size(imc_level_v, 100)

#Display the distribution for obesity levels
#The function
hist_obesity_level <- function(data, main="QQ-Plot", xlab="x value", ylab="frequency")
{  
  hist(data, main = main,xlab = xlab,ylab=ylab, xlim =c(0, 7), ylim=c(0,300), breaks = 7, col = "hotpink3", border = "white")
  abline(v = mean(data), col = "gray1", lwd = 2)
}

#Display the distribution for different sample sizes
par(mfrow = c(1,3))
hist_obesity_level(mean_5,main="Distribution for the sample size of 5", xlab="sample size of 5")
hist_obesity_level(mean_20,main="Distribution for the sample size of 20", xlab="sample size of 20")
hist_obesity_level(mean_100,main="Distribution for the sample size of 100", xlab="sample size of 100")

#Display their Quantile plots
#The function
qqnorm <- function(x, main="QQ-Plot", xlab="Quantiles for the normal distribution", 
                   ylab="Quantiles for the sample studied") {
  prob <- seq(0.01, 0.99, 0.01)
  standar <- scale(x)
  plot(qnorm(prob), quantile(standar, prob),
       xlim=c(-3,3), ylim=c(-3,3),
       main=main, xlab=xlab, ylab=ylab, pch = 1, lwd = 2)
  abline(0,1,col= "hotpink2",lwd=2.5)
}


par(mfrow = c(1,3))
qqnorm(mean_5, main = "qqplot - sample of size 5")
qqnorm(mean_20, main = "qqplot - sample of size 20")
qqnorm(mean_100, main = "qqplot - sample of size 100")


#Check the percentage of the population within different standard deviations from the mean
prop_for_diff_sd = function(data, x)
{
  length(data[data <= mean(data) + x * sd(data) & data >= mean(data) -
                x * sd(data)])/length(data)
}

#For the original population
prop_for_diff_sd(imc_level_v, 1)
prop_for_diff_sd(imc_level_v, 2)
prop_for_diff_sd(imc_level_v, 3)

#For mean_5
prop_for_diff_sd(mean_5, 1)
prop_for_diff_sd(mean_5, 2)
prop_for_diff_sd(mean_5, 3)

#For mean_20
prop_for_diff_sd(mean_20, 1)
prop_for_diff_sd(mean_20, 2)
prop_for_diff_sd(mean_20, 3)

#For mean_100
prop_for_diff_sd(mean_100, 1)
prop_for_diff_sd(mean_100, 2)
prop_for_diff_sd(mean_100, 3)

# Optional version for histograms:
# Adds the total count on each bar (to use this version, just add "2" to the function calls above).
# Note: some numbers may be slightly misaligned in the last plot.
hist_obesity_level2 <- function(data, 
                                main = "QQ-Plot", 
                                xlab = "x value", 
                                ylab = "frequency") {  
  h <- hist(data, main = main, xlab = xlab, ylab = ylab,
            xlim = c(0, 7), ylim = c(0, 300), breaks = 7,
            col = "hotpink3", border = "white", labels = FALSE)
  abline(v = mean(data), col = "gray1", lwd = 2)
  text(h$mids, h$counts, labels = h$counts, pos = 3,
       col = "gray35", cex = 1, font = 2)}
  
  
#-----------------------------------------------------------------------------------------------------------------------------------  
#code for the description of the data  
#we extract the variables we need 
imc_lvl<-women2$imc_level
age<-women2$age
pal<-women2$pal
obesity_lvl<-women2$obesity_level

# Get descriptive statistics for each variable
summary(age)
summary(imc_lvl)
summary(pal)
summary(obesity_lvl)


# Visualize the distribution of these variables 
hist_var <- function(data, main = "Histogram", xlab = "x value", ylab = "Frequency",breaks=10) {
  data <- na.omit(data)
  
  hist(data,
       main   = main,
       xlab   = xlab,
       ylab   = ylab,
       xlim   = range(data),
       breaks = breaks,
       col    = "hotpink3",
       border = "black")
  
  abline(v = mean(data), col = "gray1", lwd = 2)
}

par(mfrow = c(1, 2)) 
hist_var(age,breaks = 10,main="Histogram of age ")
hist_var(pal,breaks = 15,main="Histogram of pal ")


par(mfrow = c(1, 2)) 

# Create a frequency table for the categorical variable 'imc_level' and "obesity_level"
tab_imc_lvl <- table(women2$imc_level)
tab_obesity_lvl <- table(women2$obesity_level)

#barplot for the variable "imc_level" and 'obesity_level"

barplot(tab_imc_lvl,
        main = "barplot BMI level",
        xlab = "BMI level",
        ylab = "frequency",
        col    = "hotpink3",
        border = "black")

barplot(tab_obesity_lvl,
        main = "barplot obesity level",
        xlab = "obesity level",
        ylab = "frequency",
        col    = "hotpink3",
        border = "black")

#the qqplot function 

my.qqnorm = function(x,main=NULL) {
  scaled = scale(x, center = mean(x))
  sequence = seq(0.01, 0.99, 0.01)
  normal = qnorm(sequence, 0, 1)
  reel = quantile(scaled, sequence)
  variablename = deparse(substitute(x))
  
  plot(normal, reel,
       xlim = c(-3, 3),
       ylim = c(-3, 3),
       main = main,
       xlab = "Theoretical quantiles",
       ylab = "Sample quantiles",
       pch  = 16,            
       col  = "hotpink3")    
  
  abline(0, 1, col = "gray1", lwd = 2)  # similar style to mean line on histogram
}


par(mfrow = c(1, 3)) 

#visualise the QQ-plots of the main variables 

my.qqnorm(imc_lvl,main = "QQplot: imc_level")

my.qqnorm(age, main="QQplot:age")

my.qqnorm( pal,main="QQplot:pal")




# Visualise the reference plots we would expect if our variables followed a normal distribution


par(mfrow = c(1, 3)) 

set.seed(123)              
x <- rnorm(1000, 0, 1)     

curve(dnorm(x, mean = 0, sd = 1),
      from = -3, to = 3,
      xlab = "Values", ylab = "Density",
      main = "Standard Normal Distribution Curve",
      lwd = 2)

hist(x,
     breaks = 10,
     freq   = FALSE,          
     xlab   = "Values",
     ylab   = "Density",
     main   = "Histogram with Normal Distribution Curve",
     col    = "hotpink3",
     border = "black")

curve(dnorm(x, mean = 0, sd = 1),
      from = -3, to = 3,
      xlab = "Values", ylab = "Density",
      main = "Standard Normal Distribution Curve",add=TRUE,
      lwd = 2)

qqnorm(x,
       main = "QQ plot with Normal Distribution")


  
  
#-----------------------------------------------------------------------------------------------------------------------------------  
#Code for analysis of our variable

# analyse hypothesis 1
# -> Compare the mean age between non-obese women (obesity_level = 0) and obese women (obesity_level = 1)

nop_age <- women2$age[ women2$obesity_level == 0 ] 
estim_mnop1 <- mean(nop_age, na.rm = TRUE) #The estimation of the mean age of non-obese women 
estim_mnop1

op_age<-women2$age[women2$obesity_level == 1]
estim_op1 <- mean(op_age, na.rm = TRUE) #The estimation of the mean age of obese women     
estim_op1

# sample variance and sample size for the non-obese group
s1=var(nop_age)
n1=length(nop_age)
s1/n1                     # estimated variance of the sample mean (non-obese)

# sample variance and sample size for obese group
s2=var(op_age)
n2=length(op_age)
s2/n2                     # estimated variance of the sample mean (obese)

# variance of the estimator (difference of two independent means)
var_estimateur1=(s2/n2)+(s1/n1)
var_estimateur1

# standard error of the difference of means
se_estimateur1 = sqrt(var_estimateur1)
se_estimateur1

# z-statistic for testing H0: (mean_obese - mean_non_obese) = 0
z1 = ((estim_op1 - estim_mnop1) - 0)/se_estimateur1
z1

# two-sided p-value associated with z1
p1=2*(1-(abs(pnorm(z1))))
p1

# 95% confidence interval for the difference of means (obese - non-obese)
ic95_sup1=((estim_op1 - estim_mnop1) - 0)+1.96 * (se_estimateur1)
ic95_sup1

ic95_inf1=((estim_op1 - estim_mnop1) - 0)-1.96 * (se_estimateur1)
ic95_inf1



# analyse hypothesis 2
# -> Compare the mean pal (physical activity level) between non-obese and obese women

nop_pal <- women2$pal[ women2$obesity_level == 0 ]
estim_mnop2 <- mean(nop_pal, na.rm = TRUE)#The estimation of the mean pal of non-obese women
estim_mnop2

op_pal<-women2$pal[women2$obesity_level == 1]
estim_op2 <- mean(op_pal, na.rm = TRUE)#The estimation of the mean pal of obese women       
estim_op2

# sample variance, standard deviation and sample size for the non-obese group (pal)
s3=var(nop_pal)
sd3=sqrt(s3)
sd3
n3=length(nop_pal)
s3/n3                     # variance of the sample mean (non-obese,pal)

# sample variance, standard deviation and sample size for the obese group (pal)
s4=var(op_pal)
sd4=sqrt(s4)
sd4
n4=length(op_pal)
s4/n4                     # variance of the sample mean (obese, pal)

# variance and standard error of the difference of mean pal
var_estimateur2=(s4/n4)+(s3/n3)
var_estimateur2

se_estimateur2 = sqrt(var_estimateur2)
se_estimateur2

# z-statistic for H0: difference of mean pal = 0
z2 = ((estim_op2 - estim_mnop2) - 0)/se_estimateur2
z2

# one-sided p-value associated with z2 (direction depends on H1)
p2=pnorm(z2)
p2

# 95% confidence interval for the difference of mean pal
ic95_sup2=((estim_op2 - estim_mnop2) - 0)+1.96 * (se_estimateur2)
ic95_sup2

ic95_inf2=((estim_op2 - estim_mnop2) - 0)-1.96 * (se_estimateur2)
ic95_inf2






#analyse hypothesis 3
# -> One-sample test: check if the mean IMC level of the whole sample is equal to mu0 = 3

wp_imc_level <- women2$imc_level 
estim_wp_imc_level <- mean(wp_imc_level, na.rm = TRUE)#The estimation of the mean imc_level of the whole female population
estim_wp_imc_level

mu0=3                          # hypothesized mean IMC level

# sample variance, standard deviation and size for imc_level
s5=var(wp_imc_level)
sd5=sqrt(s5)
sd5
n5=length(wp_imc_level)
n5

# z-statistic for H0: mean imc_level = 3
z3 = (estim_wp_imc_level-mu0)/(sd5/sqrt(n5))
z3

# one-sided p-value for this z-statistic
p3=1-pnorm(z3)
p3

# 95% confidence interval for the mean imc_level
ic95_sup3=((estim_wp_imc_level) - 0)+1.96 * (sd5/sqrt(n5))
ic95_sup3

ic95_inf3=((estim_wp_imc_level) - 0)-1.96 * (sd5/sqrt(n5))
ic95_inf3

