setwd("C:/Users/El Richardson/OneDrive - Lancaster University/Biomedicine
      /Year 3/312 Medical Genetics/Coursework/Practical report")
data <- read.csv("class alleles.csv")

# Class-------------------------------------------------------------------------
colnames(data) <- c("A", "B")

# Most and least common alleles

names(which.min
      (table(c(data$A, data$B)))
      ) # These are not acceptable alleles: -448-  -450-  -459- 
        #These are: 753  769  
names(which.max(table(c(data$A, data$B)))) # 561


# Me----------------------------------------------------------------------------
# Frequency of my alleles
length(data$A) # 110

firstallele <- data$A == "449" | data$B == "449"
table(firstallele)["TRUE"] # 24
allele1freq <- 24/110 # 0.2181818

secondallele <- data$A == "657" | data$B == "657"
table(secondallele)["TRUE"] # 15
allele2freq <- 15/110 # 0.1363636

genotypefreq <- allele1freq*allele2freq # 0.02975207
(0.02975207)^-1 # 33.61111
33.61111^2 # 1129.707

# Suspect-----------------------------------------------------------------------
# Frequency of suspect's alleles
sus2allele <- data$A == "577" | data$B == "577"
table(sus2allele)["TRUE"] # 12
susallele2freq <- 12/110 # 0.1090909
susgenotypefreq <- allele1freq*susallele2freq # 0.02380165
(0.02380165)^-1 # 42.01389
42.01389^2# 1765.167
