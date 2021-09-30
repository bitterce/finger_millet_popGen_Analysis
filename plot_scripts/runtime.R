library(ggplot2)

# Plot runtime of parallelized and non-parallelized joint genotyping

df <- data.frame(no_of_samples=rep(c("10", "20", "30", "40"), 2),
                 runtimes=c(144, 308, 598, 1200, 34, 84, 126, 140),
                 no_of_cores=rep(c("1", "8"), each=4))

ggplot(df, aes(x=no_of_samples, y=runtimes, group=no_of_cores)) +
  geom_line(aes(linetype=no_of_cores))+
  geom_point()

ggplot(df, aes(x=no_of_samples, y=runtimes, group=no_of_cores)) +
  scale_shape_discrete(name  ="No. of cores used",
                       breaks=c("1", "8"),
                       labels=c("1", "8")) +
  geom_line(aes(linetype=no_of_cores))+
  geom_point(aes(shape=no_of_cores)) +
  labs(y="Runtime (min)", x="No. of samples") +
  ggtitle("Speedup of joint genotyping from 1 to 8 cores")

lp <- ggplot(data=df, aes(x=no_of_samples, y=runtimes, group=no_of_cores, shape=no_of_cores)) + 
  geom_line() + 
  geom_point()

lp + scale_shape_discrete(name  ="No. of cores used",
                          breaks=c("1", "8"),
                          labels=c("1", "8")) +
  labs(y="Runtime (min)", x="No. of samples") +
  ggtitle("Speedup of joint genotyping from 1 to 8 cores")
lp +
  labs(y="Runtime (min)", x="No. of samples") +
  ggtitle("Speedup of joint genotyping from 1 to 8 cores")

ggsave("report/main/figures/speedup.png", width = 150, height = 100, units = "mm")

ggsave("results/figs/hist_read_count.png", width = 150, height = 100, units = "mm")
