library(ggplot2)
setwd('master_thesis')

options(scipen=999)

## Plot read count distribution over all 350 samples 
read_count <- read.table("results/read_count.txt", header = T, sep = "\t")
head(read_count)

ggplot(read_count[51:100,], aes(x=factor(sample), y=read_count)) + 
  geom_bar(stat="identity",position="dodge", fill = "#FF6666", width=0.8) +
  labs(y="Read count", x="Sample ID") +
  theme(axis.text.x=element_text(angle=45,hjust=0.5,vjust=0, size=6)) +
  ggtitle("Read distribution of samples 51 to 100") +
  theme(plot.title = element_text(hjust = 0.5))
ggsave("results/figs/read_distribution_51_100.png", width = 150, height = 100, units = "mm")


ggplot(read_count, aes(x=read_count)) +
  geom_histogram(fill = "#FF6666") +
  labs(y="Frequency", x="Read count") +
  ggtitle("Histogram of the read counts in all 350 samples") +
  theme(plot.title = element_text(hjust = 0.5))
ggsave("results/figs/hist_read_count.png", width = 150, height = 100, units = "mm")
