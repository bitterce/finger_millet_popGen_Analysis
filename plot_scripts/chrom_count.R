library(ggplot2)

options(scipen=999)

# Plot chromosome count of subgenome A and subgenome B

A_chrom_count <- read.table("results/ref_A_chromsizes.txt", header = F, sep = "\t")

ggplot(A_chrom_count, aes(x=V1, y=V2)) + 
  geom_bar(stat="identity",position="dodge", fill = "#FF6666", width=0.8) +
  labs(y="Number of nucleotides", x="Scaffold") +
  theme(axis.text.x=element_text(angle=90,hjust=0.5,vjust=0, size=5)) +
  ggtitle("Nucleotide number between scaffolds in subgenome A") +
  theme(plot.title = element_text(hjust = 0.5))
ggsave("results/figs/chrom_count_subA.png", width = 150, height = 100, units = "mm")

B_chrom_count <- read.table("results/ref_B_chromsizes.txt", header = F, sep = "\t")

ggplot(B_chrom_count, aes(x=V1, y=V2)) + 
  geom_bar(stat="identity",position="dodge", fill = "#FF6666", width=0.8) +
  labs(y="Number of nucleotides", x="Scaffold") +
  theme(axis.text.x=element_text(angle=90,hjust=0.5,vjust=0, size=3)) +
  ggtitle("Nucleotide number between scaffolds of subgenome B") +
  theme(plot.title = element_text(hjust = 0.5))
ggsave("results/figs/chrom_count_subB.png", width = 150, height = 100, units = "mm")
