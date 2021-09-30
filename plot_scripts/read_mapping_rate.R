# 20200117 Celine barplot
options(scipen=999)

## Sample 301-350

read_count <- read.table("read_count.txt", header = T, sep = "\t")
read_count_300_350 <- read_count[301:350,]

## Subgenome A

A_301_350_data_before <- read.table("number_of_reads_301_350_on_A.txt", sep="\t", header=T)
A_301_350_data_before <- cbind(A_301_350_data_before, read_count_300_350[, 2]*2)
A_301_350_data_before <- A_301_350_data_before[c("sample_id", "read_count_300_350[, 2] * 2", 
                             "number_of_mapped_reads", "percentage")]

colnames(A_301_350_data_before)[2] <- "number_of_reads"
A_301_350_data_before["percentage"] <- NULL

A_301_350_data_before <- cbind(A_301_350_data_before,
                       A_301_350_data_before$number_of_mapped_reads/A_301_350_data_before$number_of_reads)
colnames(A_301_350_data_before)[4] <- "percentage"

head(A_301_350_data_before)

A_301_350_data_after <- read.table("number_of_reads_301_350_after_EAGLE-RC_on_A.txt", sep="\t", header=T)

A_301_350_data_after["percentage"] <- NULL

A_301_350_data_after <- cbind(A_301_350_data_after,
                      A_301_350_data_after$number_of_mapped_reads/A_301_350_data_before$number_of_reads)



colnames(A_301_350_data_after)[4] <- "percentage"


barplot(data$number_of_reads/1000000/2, main="Total number of reads sequenced", col="lightblue", names.arg = 301:350, ylab = "number of reads (Mio.)")

barplot(data_before$number_of_mapped_reads/1000000/2, col="lightblue", main="Reads mapping to subgenome A", names.arg=301:350, ylab = "number of mapped reads (Mio.)") 

barplot(data$percentage, col="lightblue", main="Percentage of reads mapping to subgenome A", names.arg = 301:350, ylab = "percentage of mapped reads")

## Subgenome B

B_301_350_data_before <- read.table("number_of_reads_301_350_on_B.txt", sep="\t", header=T)
B_301_350_data_before <- cbind(B_301_350_data_before, read_count_300_350[, 2]*2)
B_301_350_data_before <- B_301_350_data_before[c("sample_id", "read_count_300_350[, 2] * 2", 
                                 "number_of_mapped_reads", "percentage")]

colnames(B_301_350_data_before)[2] <- "number_of_reads"

B_301_350_data_before["percentage"] <- NULL

B_301_350_data_before <- cbind(B_301_350_data_before,
                       B_301_350_data_before$number_of_mapped_reads/B_301_350_data_before$number_of_reads)



colnames(B_301_350_data_before)[4] <- "percentage"

head(B_301_350_data_before)

B_301_350_data_after <- read.table("number_of_reads_301_350_after_EAGLE-RC_on_B.txt", sep="\t", header=T)

B_301_350_data_after["percentage"] <- NULL

B_301_350_data_after <- cbind(B_301_350_data_after,
                       B_301_350_data_after$number_of_mapped_reads/B_301_350_data_before$number_of_reads)



colnames(B_301_350_data_after)[4] <- "percentage"


barplot(data$number_of_reads/1000000, main="Total number of reads sequenced", col="lightblue", names.arg = 301:350, ylab = "number of reads (Mio.)")

barplot(data_before$number_of_mapped_reads/1000000/2, col="lightblue", main="Reads mapping to subgenome A", names.arg=301:350, ylab = "number of mapped reads (Mio.)") 

barplot(data$percentage, col="lightblue", main="Percentage of reads mapping to subgenome A", names.arg = 301:350, ylab = "percentage of mapped reads")


## Plot results

ggplot(A_301_350_data_before, aes(x=factor(sample_id), y=number_of_mapped_reads/2)) + 
  geom_bar(stat="identity",position="dodge", fill = "#FF6666", width=0.8) +
  labs(y="Read count", x="Sample ID") +
  theme(axis.text.x=element_text(angle=90,hjust=0.5,vjust=0, size=6)) +
  ggtitle("Reads mapping to subgenome A before EAGLE-RC") +
  theme(plot.title = element_text(hjust = 0.5))
ggsave("../../master_thesis/report/git_repo_thesis/report/main/figures/read_map_A_before_300_350.png", width = 150, height = 100, units = "mm")

ggplot(A_301_350_data_after, aes(x=factor(sample_id), y=number_of_mapped_reads/2)) + 
  geom_bar(stat="identity",position="dodge", fill = "#FF6666", width=0.8) +
  labs(y="Read count", x="Sample ID") +
  theme(axis.text.x=element_text(angle=90,hjust=0.5,vjust=0, size=6)) +
  ggtitle("Reads mapping to subgenome A after EAGLE-RC") +
  theme(plot.title = element_text(hjust = 0.5))
ggsave("../../master_thesis/report/git_repo_thesis/report/main/figures/read_map_A_after_300_350.png", width = 150, height = 100, units = "mm")

ggplot(B_301_350_data_before, aes(x=factor(sample_id), y=number_of_mapped_reads/2)) + 
  geom_bar(stat="identity",position="dodge", fill = "#FF6666", width=0.8) +
  labs(y="Read count", x="Sample ID") +
  theme(axis.text.x=element_text(angle=90,hjust=0.5,vjust=0, size=6)) +
  ggtitle("Reads mapping to subgenome B before EAGLE-RC") +
  theme(plot.title = element_text(hjust = 0.5))
ggsave("../../master_thesis/report/git_repo_thesis/report/main/figures/read_map_B_before_300_350.png", width = 150, height = 100, units = "mm")

ggplot(B_301_350_data_after, aes(x=factor(sample_id), y=number_of_mapped_reads/2)) + 
  geom_bar(stat="identity",position="dodge", fill = "#FF6666", width=0.8) +
  labs(y="Read count", x="Sample ID") +
  theme(axis.text.x=element_text(angle=90,hjust=0.5,vjust=0, size=6)) +
  ggtitle("Reads mapping to subgenome B after EAGLE-RC") +
  theme(plot.title = element_text(hjust = 0.5))
ggsave("../../master_thesis/report/git_repo_thesis/report/main/figures/read_map_B_after_300_350.png", width = 150, height = 100, units = "mm")

ggplot(A_301_350_data_before, aes(x=factor(sample_id), y=percentage*100)) + 
  geom_bar(stat="identity",position="dodge", fill = "#FF6666", width=0.8) +
  labs(y="Percentage", x="Sample ID") +
  theme(axis.text.x=element_text(angle=90,hjust=0.5,vjust=0, size=6)) +
  ggtitle("Read mapping rate of subgenome A before EAGLE-RC") +
  theme(plot.title = element_text(hjust = 0.5))
ggsave("../../master_thesis/report/git_repo_thesis/report/main/figures/read_map_percentage_A_before_300_350.png", width = 150, height = 100, units = "mm")

ggplot(B_301_350_data_before, aes(x=factor(sample_id), y=percentage*100)) + 
  geom_bar(stat="identity",position="dodge", fill = "#FF6666", width=0.8) +
  labs(y="Percentage", x="Sample ID") +
  theme(axis.text.x=element_text(angle=90,hjust=0.5,vjust=0, size=6)) +
  ggtitle("Read mapping rate of subgenome B before EAGLE-RC") +
  theme(plot.title = element_text(hjust = 0.5))
ggsave("../../master_thesis/report/git_repo_thesis/report/main/figures/read_map_percentage_B_before_300_350.png", width = 150, height = 100, units = "mm")

ggplot(A_301_350_data_after, aes(x=factor(sample_id), y=percentage*100)) + 
  geom_bar(stat="identity",position="dodge", fill = "#FF6666", width=0.8) +
  labs(y="Percentage", x="Sample ID") +
  theme(axis.text.x=element_text(angle=90,hjust=0.5,vjust=0, size=6)) +
  ggtitle("Read mapping rate of subgenome A after EAGLE-RC") +
  theme(plot.title = element_text(hjust = 0.5))
ggsave("../../master_thesis/report/git_repo_thesis/report/main/figures/read_map_percentage_A_after_300_350.png", width = 150, height = 100, units = "mm")

ggplot(B_301_350_data_after, aes(x=factor(sample_id), y=percentage*100)) + 
  geom_bar(stat="identity",position="dodge", fill = "#FF6666", width=0.8) +
  labs(y="Percentage", x="Sample ID") +
  theme(axis.text.x=element_text(angle=90,hjust=0.5,vjust=0, size=6)) +
  ggtitle("Read mapping rate of subgenome B after EAGLE-RC") +
  theme(plot.title = element_text(hjust = 0.5))
ggsave("../../master_thesis/report/git_repo_thesis/report/main/figures/read_map_percentage_B_bafter_300_350.png", width = 150, height = 100, units = "mm")

## Sample 101-150

## Subgenome A

A_101_150 <- read.table("read_count_101_150_on_A.txt", header=T)
B_101_150 <- read.table("read_count_101_150_on_B.txt", header=T)
  
ggplot(A_101_150, aes(x=factor(sample_id), y=number_of_mapped_reads_before_eaglerc/2)) + 
  geom_bar(stat="identity",position="dodge", fill = "#FF6666", width=0.8) +
  labs(y="Read count", x="Sample ID") +
  theme(axis.text.x=element_text(angle=90,hjust=0.5,vjust=0, size=6)) +
  ggtitle("Reads mapping to subgenome A before EAGLE-RC") +
  theme(plot.title = element_text(hjust = 0.5))
ggsave("../report/git_repo_thesis/report/main/figures/read_map_A_before_101_150.png", width = 150, height = 100, units = "mm")

ggplot(A_101_150, aes(x=factor(sample_id), y=number_of_reads_after_eaglerc/2)) + 
  geom_bar(stat="identity",position="dodge", fill = "#FF6666", width=0.8) +
  labs(y="Read count", x="Sample ID") +
  theme(axis.text.x=element_text(angle=90,hjust=0.5,vjust=0, size=6)) +
  ggtitle("Reads mapping to subgenome A after EAGLE-RC") +
  theme(plot.title = element_text(hjust = 0.5))
ggsave("..//report/git_repo_thesis/report/main/figures/read_map_A_after_101_150.png", width = 150, height = 100, units = "mm")

ggplot(B_101_150, aes(x=factor(sample_id), y=number_of_mapped_reads_before_eaglerc/2)) + 
  geom_bar(stat="identity",position="dodge", fill = "#FF6666", width=0.8) +
  labs(y="Read count", x="Sample ID") +
  theme(axis.text.x=element_text(angle=90,hjust=0.5,vjust=0, size=6)) +
  ggtitle("Reads mapping to subgenome B before EAGLE-RC") +
  theme(plot.title = element_text(hjust = 0.5))
ggsave("../report/git_repo_thesis/report/main/figures/read_map_B_before_101_150.png", width = 150, height = 100, units = "mm")

ggplot(B_101_150, aes(x=factor(sample_id), y=number_of_reads_after_eaglerc/2)) + 
  geom_bar(stat="identity",position="dodge", fill = "#FF6666", width=0.8) +
  labs(y="Read count", x="Sample ID") +
  theme(axis.text.x=element_text(angle=90,hjust=0.5,vjust=0, size=6)) +
  ggtitle("Reads mapping to subgenome B after EAGLE-RC") +
  theme(plot.title = element_text(hjust = 0.5))
ggsave("../../master_thesis/report/git_repo_thesis/report/main/figures/read_map_B_after_101_150.png", width = 150, height = 100, units = "mm")

ggplot(A_101_150, aes(x=factor(sample_id), y=percentage_before_eaglerc)) + 
  geom_bar(stat="identity",position="dodge", fill = "#FF6666", width=0.8) +
  labs(y="Percentage", x="Sample ID") +
  theme(axis.text.x=element_text(angle=90,hjust=0.5,vjust=0, size=6)) +
  ggtitle("Read mapping rate of subgenome A before EAGLE-RC") +
  theme(plot.title = element_text(hjust = 0.5))
ggsave("../../master_thesis/report/git_repo_thesis/report/main/figures/read_map_percentage_A_before_101_150.png", width = 150, height = 100, units = "mm")

ggplot(B_101_150, aes(x=factor(sample_id), y=percentage_before_eaglerc)) + 
  geom_bar(stat="identity",position="dodge", fill = "#FF6666", width=0.8) +
  labs(y="Percentage", x="Sample ID") +
  theme(axis.text.x=element_text(angle=90,hjust=0.5,vjust=0, size=6)) +
  ggtitle("Read mapping rate of subgenome B before EAGLE-RC") +
  theme(plot.title = element_text(hjust = 0.5))
ggsave("../../master_thesis/report/git_repo_thesis/report/main/figures/read_map_percentage_B_before_101_150.png", width = 150, height = 100, units = "mm")

ggplot(A_101_150, aes(x=factor(sample_id), y=percentage_after_eaglerc)) + 
  geom_bar(stat="identity",position="dodge", fill = "#FF6666", width=0.8) +
  labs(y="Percentage", x="Sample ID") +
  theme(axis.text.x=element_text(angle=90,hjust=0.5,vjust=0, size=6)) +
  ggtitle("Read mapping rate of subgenome A after EAGLE-RC") +
  theme(plot.title = element_text(hjust = 0.5))
ggsave("../../master_thesis/report/git_repo_thesis/report/main/figures/read_map_percentage_A_after_101_150.png", width = 150, height = 100, units = "mm")

ggplot(B_101_150, aes(x=factor(sample_id), y=percentage_after_eaglerc)) + 
  geom_bar(stat="identity",position="dodge", fill = "#FF6666", width=0.8) +
  labs(y="Percentage", x="Sample ID") +
  theme(axis.text.x=element_text(angle=90,hjust=0.5,vjust=0, size=6)) +
  ggtitle("Read mapping rate of subgenome B after EAGLE-RC") +
  theme(plot.title = element_text(hjust = 0.5))
ggsave("../../master_thesis/report/git_repo_thesis/report/main/figures/read_map_percentage_B_bafter_101_150.png", width = 150, height = 100, units = "mm")

# Sample 201-250 

A_201_250 <- read.table("read_count_201_250_on_A.txt", header=T)
B_201_250 <- read.table("read_count_201_250_on_B.txt", header=T)

ggplot(A_201_250, aes(x=factor(sample_id), y=number_of_mapped_reads_before_eaglerc/2)) + 
  geom_bar(stat="identity",position="dodge", fill = "#FF6666", width=0.8) +
  labs(y="Read count", x="Sample ID") +
  theme(axis.text.x=element_text(angle=90,hjust=0.5,vjust=0, size=6)) +
  ggtitle("Reads mapping to subgenome A before EAGLE-RC") +
  theme(plot.title = element_text(hjust = 0.5))
ggsave("../report/git_repo_thesis/report/main/figures/read_map_A_before_201_250.png", width = 150, height = 100, units = "mm")

ggplot(A_201_250, aes(x=factor(sample_id), y=number_of_reads_after_eaglerc/2)) + 
  geom_bar(stat="identity",position="dodge", fill = "#FF6666", width=0.8) +
  labs(y="Read count", x="Sample ID") +
  theme(axis.text.x=element_text(angle=90,hjust=0.5,vjust=0, size=6)) +
  ggtitle("Reads mapping to subgenome A after EAGLE-RC") +
  theme(plot.title = element_text(hjust = 0.5))
ggsave("../report/git_repo_thesis/report/main/figures/read_map_A_after_201_250.png", width = 150, height = 100, units = "mm")

ggplot(B_201_250, aes(x=factor(sample_id), y=number_of_mapped_reads_before_eaglerc/2)) + 
  geom_bar(stat="identity",position="dodge", fill = "#FF6666", width=0.8) +
  labs(y="Read count", x="Sample ID") +
  theme(axis.text.x=element_text(angle=90,hjust=0.5,vjust=0, size=6)) +
  ggtitle("Reads mapping to subgenome B before EAGLE-RC") +
  theme(plot.title = element_text(hjust = 0.5))
ggsave("../report/git_repo_thesis/report/main/figures/read_map_B_before_201_250.png", width = 150, height = 100, units = "mm")

ggplot(B_201_250, aes(x=factor(sample_id), y=number_of_reads_after_eaglerc/2)) + 
  geom_bar(stat="identity",position="dodge", fill = "#FF6666", width=0.8) +
  labs(y="Read count", x="Sample ID") +
  theme(axis.text.x=element_text(angle=90,hjust=0.5,vjust=0, size=6)) +
  ggtitle("Reads mapping to subgenome B after EAGLE-RC") +
  theme(plot.title = element_text(hjust = 0.5))
ggsave("../report/git_repo_thesis/report/main/figures/read_map_B_after_201_250.png", width = 150, height = 100, units = "mm")

ggplot(A_201_250, aes(x=factor(sample_id), y=percentage_before_eaglerc)) + 
  geom_bar(stat="identity",position="dodge", fill = "#FF6666", width=0.8) +
  labs(y="Percentage", x="Sample ID") +
  theme(axis.text.x=element_text(angle=90,hjust=0.5,vjust=0, size=6)) +
  ggtitle("Read mapping rate of subgenome A before EAGLE-RC") +
  theme(plot.title = element_text(hjust = 0.5))
ggsave("../report/git_repo_thesis/report/main/figures/read_map_percentage_A_before_201_250.png", width = 150, height = 100, units = "mm")

ggplot(B_201_250, aes(x=factor(sample_id), y=percentage_before_eaglerc)) + 
  geom_bar(stat="identity",position="dodge", fill = "#FF6666", width=0.8) +
  labs(y="Percentage", x="Sample ID") +
  theme(axis.text.x=element_text(angle=90,hjust=0.5,vjust=0, size=6)) +
  ggtitle("Read mapping rate of subgenome B before EAGLE-RC") +
  theme(plot.title = element_text(hjust = 0.5))
ggsave("../report/git_repo_thesis/report/main/figures/read_map_percentage_B_before_201_250.png", width = 150, height = 100, units = "mm")

ggplot(A_201_250, aes(x=factor(sample_id), y=percentage_after_eaglerc)) + 
  geom_bar(stat="identity",position="dodge", fill = "#FF6666", width=0.8) +
  labs(y="Percentage", x="Sample ID") +
  theme(axis.text.x=element_text(angle=90,hjust=0.5,vjust=0, size=6)) +
  ggtitle("Read mapping rate of subgenome A after EAGLE-RC") +
  theme(plot.title = element_text(hjust = 0.5))
ggsave("../report/git_repo_thesis/report/main/figures/read_map_percentage_A_after_201_250.png", width = 150, height = 100, units = "mm")

ggplot(B_201_250, aes(x=factor(sample_id), y=percentage_after_eaglerc)) + 
  geom_bar(stat="identity",position="dodge", fill = "#FF6666", width=0.8) +
  labs(y="Percentage", x="Sample ID") +
  theme(axis.text.x=element_text(angle=90,hjust=0.5,vjust=0, size=6)) +
  ggtitle("Read mapping rate of subgenome B after EAGLE-RC") +
  theme(plot.title = element_text(hjust = 0.5))
ggsave("../report/git_repo_thesis/report/main/figures/read_map_percentage_B_after_201_250.png", width = 150, height = 100, units = "mm")





