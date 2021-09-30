library(readxl)
library("ggplot2")
library("RColorBrewer")
library("colorRamps")

df_ori <- read_excel("~/master_thesis/Ragi_350_summary.xlsx")
head(df_ori)
df_ori[df_ori == "NA"] <- NA
write.table(df_ori, "results/info_accession_loc.txt", sep = "\t", row.names = F)

# PCA for subgenome A
eigenvecA<-read.table("results/plink_350_subA_imputed_pca.eigenvec_new")
eigenvalA<-read.table("results/plink_350_subA_imputed_pca.eigenval")
eigenvalA_sum <- sum(eigenval)

gg1 <- ggplot(eigenvecA,aes(V3,V4, color=V2)) +
  geom_point() +
  labs(x = paste("PC1", round(eigenvalA[1,]/eigenvalA_sum*100, digits=2), "%"), 
       y=paste("PC2", round(eigenvalA[2,]/eigenvalA_sum*100, digits=2), "%"),title = "PCA with all 350 sequences on subgenome A")

gg2 <- ggplot(eigenvecA,aes(V3,V5, color=V2))+
  geom_point()+
  labs(x = paste("PC1", round(eigenvalA[1,]/eigenvalA_sum*100, digits=2), "%"),
       y=paste("PC3", round(eigenvalA[3,]/eigenvalA_sum*100, digits=2), "%"),title = "PCA with all 350 sequences and subgenome A")

# PCA for subgenome B
eigenvecB<-read.table("results/plink_350_subB_imputed_pca.eigenvec_new")
eigenvalB<-read.table("results/plink_350_subB_imputed_pca.eigenval")
eigenvalB_sum <- sum(eigenval)

gg3 <- ggplot(eigenvecB,aes(V3,V4, color=V2)) +
  geom_point() +
  labs(x = paste("PC1", round(eigenvalB[1,]/eigenvalA_sum*100, digits=2), "%"), 
       y=paste("PC2", round(eigenvalB[2,]/eigenvalB_sum*100, digits=2), "%"),title = "PCA with all 350 sequences on subgenome B")

gg4 <- ggplot(eigenvecB,aes(V3,V5, color=V2))+
  geom_point()+
  labs(x = paste("PC1", round(eigenvalB[1,]/eigenvalB_sum*100, digits=2), "%"),
       y=paste("PC3", round(eigenvalB[3,]/eigenvalA_sum*100, digits=2), "%"),title = "PCA with all 350 sequences and subgenome B")
