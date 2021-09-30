## SNP distribution after GATK

# Read in the data and order by sample ID
A_snps_gatk <- read.table("results/A_350_number_of_SNPs_gatk.txt", header = T, sep = "\t")
A_snps_gatk <- A_snps_gatk[order(as.numeric(as.character(A_snps_gatk$sample_id))),]

B_snps_gatk <- read.table("results/B_350_number_of_SNPs_gatk.txt", header = T, sep = "\t")
B_snps_gatk <- B_snps_gatk[order(as.numeric(as.character(B_snps_gatk$sample_id))),]

# Plot SNP counts of both subgenomes
boxplot(A_snps_gatk$number_of_snps, B_snp_gatk$number_of_snps,
        names = c("A-subgenome", "B-subgenome"), 
        horizontal = T,
        main = "SNP distribution after GATK",
        col = c("lightgreen", "lightpink"))

## Plot SNP distribution of 50 samples after gatk

colnames(A_snps_gatk)[2] <- "subA"
snps_gatk <- cbind(A_snps_gatk, B_snps_gatk)[,-3]
colnames(snps_gatk)[3] <- "subB"

ggplot(melt(snps_gatk[301:350, ], id.vars = "sample_id"), aes(sample_id, value, fill=variable)) +
  geom_bar(stat="identity",position="dodge") +
  labs(y="SNP count", x="Sample ID") +
  ylim(0, 2000000) +
  ggtitle("SNP distribution of samples 301 to 350 after GATK")
ggsave("results/figs/snp_distribution_gatk_301_350.png", width = 150, height = 100, units = "mm")

## SNP distribution after joint genotyping raw
A_snps_joint_raw <- read.table("results/A_350_joint_raw_stats.snps", header = T, sep = "\t")

for (i in 1:350) {
  temp <- strsplit(A_snps_joint_raw[,2][i], "/")
  A_snps_joint_raw[,2][i] <- temp[[1]][2]
}

A_snps_joint_raw <- A_snps_joint_raw[order(as.numeric(as.character(A_snps_joint_raw$all))),]
names(A_snps_joint_raw) <- c("count", "sample") 

B_snps_joint_raw <- read.table("results/B_350_joint_raw_stats.snps", header = T, sep = "\t")

for (i in 1:350) {
  temp <- strsplit(B_snps_joint_raw[,2][i], "/")
  B_snps_joint_raw[,2][i] <- temp[[1]][2]
}

B_snps_joint_raw <- B_snps_joint_raw[order(as.numeric(as.character(B_snps_joint_raw$all))),]
names(B_snps_joint_raw) <- c("count", "sample") 

## SNP distribution after PR202 filtering
# Read data into table
A_snps_pr202 <- read.table("results/A_350_joint_PR202_stats.snps", header = T, sep = "\t")

# Modify dataset to my needs (drop sample string)

for (i in 1:350) {
  temp <- strsplit(A_snps_pr202[,2][i], "/")
  A_snps_pr202[,2][i] <- temp[[1]][2]
}

A_snps_pr202 <- A_snps_pr202[order(as.numeric(as.character(A_snps_pr202$all))),]
names(A_snps_pr202) <- c("count", "sample") 

B_snps_pr202 <- read.table("results/B_350_joint_PR202_stats.snps", header = T, sep = "\t")
head(B_snps_pr202)

# Modify dataset to my needs (drop sample string)

for (i in 1:350) {
  temp <- strsplit(B_snps_pr202[,2][i], "/")
  B_snps_pr202[,2][i] <- temp[[1]][2]
}

B_snps_pr202 <- B_snps_pr202[order(as.numeric(as.character(B_snps_pr202$all))),]
names(B_snps_pr202) <- c("count", "sample") 

# Plot SNP distribution of both subgenomes
boxplot(A_snps_pr202$count, B_snps_pr202$count,
        names = c("A-subgenome", "B-subgenome"), 
        horizontal = T,
        main = "SNP distribution after joint genotyping with PR202 filtering",
        col = c("lightgreen", "lightpink"))


## SNP distribution barplots (plots with 50 individuals) after pr202 filtering

colnames(A_snps_pr202)[1] <- "subA"
snps_pr202 <- cbind(A_snps_pr202, B_snps_pr202)[, 1:3]
colnames(snps_pr202)[3] <- "subB"
snps_pr202 <- snps_pr202[, c(2,1,3)]

ggplot(melt(snps_beagle[301:350, ]), aes(as.numeric(sample), value, fill=variable)) +
  geom_bar(stat="identity",position="dodge") +
  labs(y="SNP count", x="Sample ID") +
  ylim(0, 2000000) +
  ggtitle("SNP distribution of sample 301 to 350 after PR202 filtering")
ggsave("results/figs/snp_distribution_pr202_301_350.png", width = 150, height = 100, units = "mm")

## SNP distribution after BEAGLE
# Read data into table

A_snps_beagle <- read.table("results/A_350_stats_after_beagle.snps", header = T, sep = "\t")
head(A_snps_beagle)

# Modify dataset to my needs (drop sample string)

for (i in 1:350) {
  temp <- strsplit(A_snps_beagle[,2][i], "/")
  A_snps_beagle[,2][i] <- temp[[1]][2]
}

A_snps_beagle <- A_snps_beagle[order(as.numeric(as.character(A_snps_beagle$all))),]
names(A_snps_beagle) <- c("count", "sample") 

B_snps_beagle <- read.table("results/B_350_stats_after_beagle.snps", header = T, sep = "\t")
head(B_snps_beagle)

for (i in 1:350) {
  temp <- strsplit(B_snps_beagle[,2][i], "/")
  B_snps_beagle[,2][i] <- temp[[1]][2]
}

B_snps_beagle <- B_snps_beagle[order(as.numeric(as.character(B_snps_beagle$all))),]
names(B_snps_beagle) <- c("count", "sample") 

# Plot SNP counts of both subgenomes
boxplot(A_snps_beagle$count, B_snps_beagle$count,
        names = c("A-subgenome", "B-subgenome"), 
        horizontal = T,
        main = "SNP distribution after BEAGLE",
        col = c("lightgreen", "lightpink"))

# SNP distribution barplots of all 350 samples after beagle

colnames(A_snps_beagle)[1] <- "subA"
snps_beagle <- cbind(A_snps_beagle, B_snps_beagle)[, 1:3]
colnames(snps_beagle)[3] <- "subB"
snps_beagle <- snps_beagle[, c(2,1,3)]

ggplot(melt(snps_beagle[301:350, ]), aes(as.numeric(sample), value, fill=variable)) +
  geom_bar(stat="identity",position="dodge") +
  labs(y="SNP count", x="Sample ID") +
  ylim(0, 2000000) +
  ggtitle("SNP distribution of sample 301 to 350 after BEAGLE")
ggsave("results/figs/snp_distribution_beagle_301_350.png", width = 150, height = 100, units = "mm")


## Make table with sums of SNPs
sum_snps_joint_raw <- c(sum(A_snps_joint_raw$count), sum(B_snps_joint_raw$count))
sum_snps_joint_pr202 <- c(sum(A_snps_pr202$count), sum(B_snps_pr202$count))
sum_snps_beagle <- c(sum(A_snps_beagle$count), sum(B_snps_beagle$count))

total_snps <- matrix(c(sum_snps_joint_raw, sum_snps_joint_pr202, sum_snps_beagle), ncol = 3)
colnames(total_snps) <- c("Raw", "PR202", "Imputed")
rownames(total_snps) <- c("A-subgenome", "B-subgenome")

write.table(total_snps, "results/table_total_snps.txt", sep = "\t")
