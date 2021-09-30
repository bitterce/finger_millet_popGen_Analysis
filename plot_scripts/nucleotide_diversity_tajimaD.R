getwd()
install.packages("ggplot2")
library(ggplot2)

# Plot nucleotide diversity after beagle
piA_after_beagle <- read.table("results/350_subA_50000_imputed.windowed.pi", header = T)
head(piA_after_beagle)

piB_after_beagle <- read.table("results/350_subB_50000_imputed.windowed.pi", header = T)
head(piB_after_beagle)

p1 <- hist(piA_after_beagle$PI, breaks=100)

p2 <- hist(piB_after_beagle$PI, breaks=100)

mycol_green <- rgb(0,128,0 ,max = 255, alpha = 80, names = "lt.green")
mycol_pink <- rgb(255,105,180, max = 255, alpha = 80, names = "lt.pink")

plot(p1, col = mycol_green, main = "Nucleotide diversity distribution after SNP imputation",
     xlab = "Pi", ylim = c(0,1400))
plot(p2, col = mycol_pink, add = T)

legend("topright", c("Subgenome A", "Subgenome B"), col=c("lightgreen", "pink"), lwd=5)

mean_pi_A <- mean(piA_after_beagle$PI)
mean_pi_B <- mean(piB_after_beagle$PI)

abline(v = c(mean_pi_A, mean_pi_B), col=c("lightgreen", "pink"), lwd=2)

## Plot Nucleotide diversity of subgenome A and B after pr202 filtering

piA_after_pr202 <- read.table("results/350_subA_pr202_filtered.windowed.pi", header = T)
head(piA_after_beagle)

piB_after_pr202 <- read.table("results/350_subB_pr202_filtered.windowed.pi", header = T)
head(piB_after_beagle)

p1 <- hist(piA_after_pr202$PI, breaks=100)

p2 <- hist(piB_after_pr202$PI, breaks=100)

mycol_green <- rgb(0,128,0 ,max = 255, alpha = 80, names = "lt.green")
mycol_pink <- rgb(255,105,180, max = 255, alpha = 80, names = "lt.pink")

plot(p1, col = mycol_green, main = "Nucleotide diversity distribution after PR202 filtering", xlab = "Pi", ylim = c(0,1400))
plot(p2, col = mycol_pink, add = T)

legend("topright", c("Subgenome A", "Subgenome B"), col=c("lightgreen", "pink"), lwd=5)

mean_pi_A <- mean(piA_after_pr202$PI)
mean_pi_B <- mean(piB_after_pr202$PI)

abline(v = c(mean_pi_A, mean_pi_B), col=c("lightgreen", "pink"), lwd=2)

## Plot Tajima's D of subgenome A and B after beagle
Tajima_A_after_beagle <- read.table("results/350_subA_50000_imputed.Tajima.D", header = T)
head(Tajima_after_beagle)

Tajima_B_after_beagle <- read.table("results/350_subB_50000_imputed.Tajima.D", header = T)
head(piB_after_beagle)

p1 <- hist(Tajima_A_after_beagle$TajimaD, breaks=100)

p2 <- hist(Tajima_B_after_beagle$TajimaD, breaks=100)

mycol_green <- rgb(0,128,0 ,max = 255, alpha = 80, names = "lt.green")
mycol_pink <- rgb(255,105,180, max = 255, alpha = 80, names = "lt.pink")

plot(p1, col = mycol_green, main = "Tajima's D distribution after SNP imputation",
     xlab = "Tajima's D", ylim = c(0,800))

plot(p2, col = mycol_pink, add = T)

legend("topright", c("Subgenome A", "Subgenome B"), col=c("lightgreen", "pink"), lwd=5)

mean_Taj_A <- mean(na.omit(Tajima_A_after_beagle$TajimaD))
mean_Taj_B <- mean(na.omit(Tajima_B_after_beagle$TajimaD))
abline(v = c(mean_Taj_A, mean_Taj_B), col=c("lightgreen", "pink"), lwd=2)


## Plot Tajima's D of subgenome A and B after pr202 filtering
Tajima_A_after_pr202 <- read.table("results/350_subA_pr202_filtered.Tajima.D", header = T)
head(Tajima_after_pr202)

Tajima_B_after_pr202 <- read.table("results/350_subB_pr202_filtered.Tajima.D", header = T)
head(piB_after_pr202)

p1 <- hist(Tajima_A_after_pr202$TajimaD, breaks=100, freq = F)

p2 <- hist(Tajima_B_after_pr202$TajimaD, breaks=200, freq = F)

mycol_green <- rgb(0,128,0 ,max = 255, alpha = 80, names = "lt.green")
mycol_pink <- rgb(255,105,180, max = 255, alpha = 80, names = "lt.pink")

plot(p1, freq = F, col = mycol_green, main = "Tajima's D distribution after PR202 filtering", 
     xlab = "Tajima's D", ylim = c(0,1.3))
plot(p2, freq = F, col = mycol_pink, add = T)

legend("topright", c("Subgenome A", "Subgenome B"), col=c("lightgreen", "pink"), lwd=5)

mean_Taj_A <- mean(na.omit(Tajima_A_after_pr202$TajimaD))
mean_Taj_B <- mean(na.omit(Tajima_B_after_pr202$TajimaD))
abline(v = c(mean_Taj_A, mean_Taj_B), col=c("lightgreen", "pink"), lwd=2)



## Plot Nucleotide diverstity with density

piA_after_beagle <- read.table("results/350_subA_50000_imputed.windowed.pi", header = T)
head(piA_after_beagle)

piB_after_beagle <- read.table("results/350_subB_50000_imputed.windowed.pi", header = T)
head(piB_after_beagle)

p1 <- hist(piA_after_beagle$PI, breaks=200)

p2 <- hist(piB_after_beagle$PI, breaks=200)

mycol_green <- rgb(0,128,0 ,max = 255, alpha = 80, names = "lt.green")
mycol_pink <- rgb(255,105,180, max = 255, alpha = 80, names = "lt.pink")

p1$density <- p1$counts/sum(p1$counts)
p2$density <- p2$counts/sum(p2$counts)

plot(p1, freq=F, col = mycol_green, ylim=c(0.0, 0.08), main = "Nucleotide diversity distribution low cov. E coracana",
     xlab = "Pi")
plot(p2, freq=F, col = mycol_pink, add = T)

legend("topright", c("Subgenome A", "Subgenome B"), col=c("lightgreen", "pink"), lwd=5)

mean_pi_A <- signif(mean(piA_after_beagle$PI), 3)
mean_pi_B <- signif(mean(piB_after_beagle$PI), 3)

text(0.006,0.04, paste("mean A-sub PI =", mean_pi_A), col=mycol_green)
text(0.006,0.03, paste("mean B-sub PI =", mean_pi_B), col=mycol_pink)

abline(v = c(mean_pi_A, mean_pi_B), col=c("lightgreen", "pink"), lwd=2)

## Tajima's D density distribution

Tajima_A_after_beagle <- read.table("results/350_subA_50000_imputed.Tajima.D", header = T)
head(Tajima_after_beagle)

Tajima_B_after_beagle <- read.table("results/350_subB_50000_imputed.Tajima.D", header = T)
head(piB_after_beagle)

p1 <- hist(Tajima_A_after_beagle$TajimaD, breaks=100)

p2 <- hist(Tajima_B_after_beagle$TajimaD, breaks=100)

mycol_green <- rgb(0,128,0 ,max = 255, alpha = 80, names = "lt.green")
mycol_pink <- rgb(255,105,180, max = 255, alpha = 80, names = "lt.pink")

p1$density <- p1$counts/sum(p1$counts)
p2$density <- p2$counts/sum(p2$counts)

plot(p1, freq=F, col = mycol_green, ylim=c(0.0,0.06),main = "Tajima's D distribution low cov. E. coracana",
     xlab = "Tajima's D")

plot(p2, freq=F, col = mycol_pink, add = T)

mean_Taj_A <- signif(median(Tajima_A_after_beagle$TajimaD, na.rm=T), 3)
mean_Taj_B <- signif(median(Tajima_B_after_beagle$TajimaD, na.rm=T), 3)

legend("topright", c("Subgenome A", "Subgenome B"), col=c("lightgreen", "pink"), lwd=5)

text(2, 0.04, paste("mean A-sub PI =", mean_Taj_A), col=mycol_green)
text(2 ,0.03, paste("mean B-sub PI =", mean_Taj_B), col=mycol_pink)

abline(v = c(mean_Taj_A, mean_Taj_B), col=c("lightgreen", "pink"), lwd=2)

## Nucleotide distribution only E.africana

piA_eafr <- read.table("results/out_A_only_Eafr_PI_window_50k.windowed.pi", header = T)

piB_eafr <- read.table("results/out_B_only_Eafr_PI_window_50k.windowed.pi", header = T)

p1 <- hist(piA_eafr$PI, breaks=200, xlim=c(0.0, 0.025))

p2 <- hist(piB_eafr$PI, breaks=200)

mycol_green <- rgb(0,128,0 ,max = 255, alpha = 80, names = "lt.green")
mycol_pink <- rgb(255,105,180, max = 255, alpha = 80, names = "lt.pink")

p1$density <- p1$counts/sum(p1$counts)
p2$density <- p2$counts/sum(p2$counts)

plot(p1, freq=F, col = mycol_green,  xlim=c(0.0,0.02), ylim=c(0.0, 0.025), 
     main = "Nucleotide diversity distribution high cov. E. africana", xlab = "Pi")
plot(p2, freq=F, col = mycol_pink, add = T)

legend("topright", c("Subgenome A", "Subgenome B"), col=c("lightgreen", "pink"), lwd=5)

mean_pi_A <- signif(mean(piA_eafr$PI), 3)
mean_pi_B <- signif(mean(piB_eafr$PI), 3)

text(0.015,0.016, paste("mean A-sub PI =", mean_pi_A), col=mycol_green)
text(0.015,0.013, paste("mean B-sub PI =", mean_pi_B), col=mycol_pink)

abline(v = c(mean_pi_A, mean_pi_B), col=c("lightgreen", "pink"), lwd=2)

## Nucleotide distribution only E.coracana

piA_cor <- read.table("results/out_A_only_Ecor_PI_window_50k.windowed.pi", header = T)

piB_cor <- read.table("results/out_B_only_Ecor_PI_window_50k.windowed.pi", header = T)

p1 <- hist(piA_cor$PI, breaks=200, xlim=c(0.0, 0.025))

p2 <- hist(piB_cor$PI, breaks=200)

mycol_green <- rgb(0,128,0 ,max = 255, alpha = 80, names = "lt.green")
mycol_pink <- rgb(255,105,180, max = 255, alpha = 80, names = "lt.pink")

p1$density <- p1$counts/sum(p1$counts)
p2$density <- p2$counts/sum(p2$counts)

plot(p1, freq=F, col = mycol_green, ylim=c(0.0, 0.05),
     main = "Nucleotide diversity distribution high cov. E. coracana", xlab = "Pi")
plot(p2, freq=F, col = mycol_pink, add = T)

legend("topright", c("Subgenome A", "Subgenome B"), col=c("lightgreen", "pink"), lwd=5)

mean_pi_A <- signif(mean(piA_cor$PI), 4)
mean_pi_B <- signif(mean(piB_cor$PI), 4)

text(0.008,0.03, paste("mean A-sub PI =", mean_pi_A), col=mycol_green)
text(0.008,0.022, paste("mean B-sub PI =", mean_pi_B), col=mycol_pink)

abline(v = c(mean_pi_A, mean_pi_B), col=c("lightgreen", "pink"), lwd=2)


## Nucleotide distribution one single copy gene data

piA_single <- read.table("results/350_subA_single_copy_1K.windowed.pi", header = T)

piB_single <- read.table("results/350_subB_single_copy_1K.windowed.pi", header = T)

p1 <- hist(piA_single$PI, breaks=100, xlim = c(0.0, 0.004))

p2 <- hist(piB_single$PI, breaks=100)

mycol_green <- rgb(0,128,0 ,max = 255, alpha = 80, names = "lt.green")
mycol_pink <- rgb(255,105,180, max = 255, alpha = 80, names = "lt.pink")

p1$density <- p1$counts/sum(p1$counts)
p2$density <- p2$counts/sum(p2$counts)

plot(p1, freq=F, col = mycol_green, ylim = c(0.0, 0.5), 
     main = "Nucleotide diversity distribution of single copy gene data", xlab = "Pi")
plot(p2, freq=F, col = mycol_pink, add = T)

legend("topright", c("Subgenome A", "Subgenome B"), col=c("lightgreen", "pink"), lwd=5)

mean_pi_A <- signif(mean(piA_single$PI), 3)
mean_pi_B <- signif(mean(piB_single$PI), 3)

text(0.002,0.3, paste("mean A-sub PI =", mean_pi_A), col=mycol_green)
text(0.002,0.2, paste("mean B-sub PI =", mean_pi_B), col=mycol_pink)

abline(v = c(mean_pi_A, mean_pi_B), col=c("lightgreen", "pink"), lwd=2)

##Tajima's D distribution of single copy gene

Tajima_A_single <- read.table("results/350_subA_1K.Tajima.D", header = T)
head(Tajima_after_beagle)

Tajima_B_single <- read.table("results/350_subB_1K.Tajima.D", header = T)
head(piB_after_beagle)

p1 <- hist(Tajima_A_single$TajimaD, breaks=80)

p2 <- hist(Tajima_B_single$TajimaD, breaks=70)

mycol_green <- rgb(0,128,0 ,max = 255, alpha = 80, names = "lt.green")
mycol_pink <- rgb(255,105,180, max = 255, alpha = 80, names = "lt.pink")

p1$density <- p1$counts/sum(p1$counts)
p2$density <- p2$counts/sum(p2$counts)

plot(p1, freq=F, col = mycol_green, ylim=c(0.0,0.2),main = "Tajima's D distribution single copy gene data",
     xlab = "Tajima's D")

plot(p2, freq=F, col = mycol_pink, add = T)

mean_Taj_A <- signif(median(Tajima_A_single$TajimaD, na.rm=T), 3)
mean_Taj_B <- signif(median(Tajima_B_single$TajimaD, na.rm=T), 3)

legend("topright", c("Subgenome A", "Subgenome B"), col=c("lightgreen", "pink"), lwd=5)

text(2, 0.1, paste("mean A-sub PI =", mean_Taj_A), col=mycol_green)
text(2 ,0.07, paste("mean B-sub PI =", mean_Taj_B), col=mycol_pink)

abline(v = c(mean_Taj_A, mean_Taj_B), col=c("lightgreen", "pink"), lwd=2)
