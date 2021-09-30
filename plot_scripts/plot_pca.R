library(readxl)
library("ggplot2")
library("RColorBrewer")
library("colorRamps")

df_ori <- read_excel("~/master_thesis/Ragi_350_summary.xlsx")
head(df_ori)
df_ori[df_ori == "NA"] <- NA
write.table(df_ori, "results/info_accession_loc.txt", sep = "\t", row.names = F)

df_no_nas <- na.omit(df_ori)

# PCA for subgenome A after beagle
eigenvecA_imputed<-read.table("results/plink_350_subA_imputed_pca.eigenvec_new")
eigenvecA_imputed <- na.omit(eigenvecA_imputed)
eigenvalA_imputed<-read.table("results/plink_350_subA_imputed_pca.eigenval")
eigenvalA_imputed <- na.omit(eigenvalA_imputed)
eigenvalA_imputed_sum <- sum(eigenvalA_imputed)

gg1 <- ggplot(eigenvecA_imputed,aes(V3,V4, color=V2)) +
  geom_point() +
  labs(x = paste("PC1", round(eigenvalA_imputed[1,]/eigenvalA_imputed_sum*100, digits=2), "%"), 
       y=paste("PC2", round(eigenvalA_imputed[2,]/eigenvalA_imputed_sum*100, digits=2), "%"),
       title = "PCA on subgenome A after SNP imputation")+
       scale_colour_discrete("Accession location") +
  theme(plot.title = element_text(hjust = 0.5))

gg2 <- ggplot(eigenvecA_imputed,aes(V3,V5, color=V2))+
  geom_point()+
  labs(x = paste("PC1", round(eigenvalA_imputed[1,]/eigenvalA_imputed_sum*100, digits=2), "%"),
       y=paste("PC3", round(eigenvalA_imputed[3,]/eigenvalA_imputed_sum*100, digits=2), "%"),
       title = "PCA on subgenome A after SNP imputation") +
       scale_colour_discrete("Accession location") +
  theme(plot.title = element_text(hjust = 0.5))

# PCA for subgenome B after beagle
eigenvecB_imputed<-read.table("results/plink_350_subB_imputed_pca.eigenvec_new")
eigenvecB_imputed <- na.omit(eigenvecB_imputed)
eigenvalB_imputed<-read.table("results/plink_350_subB_imputed_pca.eigenval")
eigenvalB_imputed <- na.omit(eigenvalB_imputed)
eigenvalB_imputed_sum <- sum(eigenvalB_imputed)

gg3 <- ggplot(eigenvecB_imputed,aes(V3,V4, color=V2)) +
  geom_point() +
  labs(x = paste("PC1", round(eigenvalB_imputed[1,]/eigenvalB_imputed_sum*100, digits=2), "%"), 
       y=paste("PC2", round(eigenvalB_imputed[2,]/eigenvalB_imputed_sum*100, digits=2), "%"),
       title = "PCA on subgenome B after SNP imputation") +
       scale_colour_discrete("Accession location") +
  theme(plot.title = element_text(hjust = 0.5))

gg4 <- ggplot(eigenvecB_imputed,aes(V3,V5, color=V2))+
  geom_point()+
  labs(x = paste("PC1", round(eigenvalB_imputed[1,]/eigenvalB_imputed_sum*100, digits=2), "%"),
       y=paste("PC3", round(eigenvalB_imputed[3,]/eigenvalB_imputed_sum*100, digits=2), "%"),
       title = "PCA on subgenome B after SNP imputation") +
       scale_colour_discrete("Accession location") +
  theme(plot.title = element_text(hjust = 0.5))

# PCA plot for subA subB merged after beagle
eigenvecAB_imputed<-read.table("results/plink_350_subAsubB_merged_imputed_pca.eigenvec_new")
eigenvecAB_imputed <- na.omit(eigenvecAB_imputed)
eigenvalAB_imputed<-read.table("results/plink_350_subAsubB_merged_imputed_pca.eigenval")
eigenvalAB_imputed <- na.omit(eigenvalAB_imputed)
eigenvalAB_imputed_sum <- sum(eigenvalAB_imputed)

gg5 <- ggplot(eigenvecAB_imputed,aes(V3,V4, color=V2)) +
  geom_point() +
  labs(x = paste("PC1", round(eigenvalAB_imputed[1,]/eigenvalAB_imputed_sum*100, digits=2), "%"), 
       y=paste("PC2", round(eigenvalAB_imputed[2,]/eigenvalAB_imputed_sum*100, digits=2), "%"),
       title = "PCA on merged genome after SNP imputation") +
       scale_colour_discrete("Accession location")+
  theme(plot.title = element_text(hjust = 0.5))

gg6 <- ggplot(eigenvecAB_imputed,aes(V3,V5, color=V2))+
  geom_point()+
  labs(x = paste("PC1", round(eigenvalAB_imputed[1,]/eigenvalAB_imputed_sum*100, digits=2), "%"),
       y=paste("PC3", round(eigenvalAB_imputed[3,]/eigenvalAB_imputed_sum*100, digits=2), "%"),
       title = "PCA on merged genome after SNP imputation") +
       scale_colour_discrete("Accession location") +
  theme(plot.title = element_text(hjust = 0.5))


# PCA for subgenome A after pr202 filtering

eigenvecA_pr202<-read.table("results/plink_350_subA_pr202_filtered_pca.eigenv_new")
eigenvecA_pr202 <- na.omit(eigenvecA_pr202)
eigenvalA_pr202<-read.table("results/plink_350_subA_pr202_filtered_pca.eigenval")
eigenvalA_pr202 <- na.omit(eigenvalA_pr202)
eigenvalA_pr202_sum <- sum(eigenvalA_pr202)

gg1 <- ggplot(eigenvecA_pr202,aes(V3,V4, color=V2)) +
  geom_point() +
  labs(x = paste("PC1", round(eigenvalA_pr202[1,]/eigenvalA_pr202_sum*100, digits=2), "%"), 
       y=paste("PC2", round(eigenvalA_pr202[2,]/eigenvalA_pr202_sum*100, digits=2), "%"),
       title = "PCA with all 350 sequences on subgenome A after PR202 filtering")

gg2 <- ggplot(eigenvecA_pr202,aes(V3,V5, color=V2))+
  geom_point()+
  labs(x = paste("PC1", round(eigenvalA_pr202[1,]/eigenvalA_pr202_sum*100, digits=2), "%"),
       y=paste("PC3", round(eigenvalA_pr202[3,]/eigenvalA_pr202_sum*100, digits=2), "%"),
       title = "PCA with all 350 sequences and subgenome A after PR202 filtering")

# PCA for subgenome B
eigenvecB_pr202<-read.table("results/plink_350_subB_pr202_filtered_pca.eigenv_new")
eigenvecB_pr202 <- na.omit(eigenvecB_pr202)
eigenvalB_pr202<-read.table("results/plink_350_subB_pr202_filtered_pca.eigenval")
eigenvalB_pr202 <- na.omit(eigenvalB_pr202)
eigenvalB_pr202_sum <- sum(eigenvalB_pr202)

gg3 <- ggplot(eigenvecB_pr202,aes(V3,V4, color=V2)) +
  geom_point() +
  labs(x = paste("PC1", round(eigenvalB_pr202[1,]/eigenvalA_pr202_sum*100, digits=2), "%"), 
       y=paste("PC2", round(eigenvalB_pr202[2,]/eigenvalB_pr202_sum*100, digits=2), "%"),
       title = "PCA with all 350 sequences on subgenome B after PR202 filtering")

gg4 <- ggplot(eigenvecB_pr202,aes(V3,V5, color=V2))+
  geom_point()+
  labs(x = paste("PC1", round(eigenvalB_pr202[1,]/eigenvalB_pr202_sum*100, digits=2), "%"),
       y=paste("PC3", round(eigenvalB_pr202[3,]/eigenvalB_pr202_sum*100, digits=2), "%"),
       title = "PCA with all 350 sequences and subgenome B after PR202 filtering")


## Plot PCA for subgenome A on single copy gene data

eigenvecA_single<-read.table("results/350_subA_single_copy_pca.eigenvec_new")
eigenvecA_single <- na.omit(eigenvecA_single)
eigenvalA_single <-read.table("results/350_subA_single_copy_pca.eigenval")
eigenvalA_single <- na.omit(eigenvalA_single)
eigenvalA_single_sum <- sum(eigenvalA_single)

gg1 <- ggplot(eigenvecA_single,aes(V3,V4, color=V2)) +
  geom_point() +
  labs(x = paste("PC1", round(eigenvalA_single[1,]/eigenvalA_single_sum*100, digits=2), "%"), 
       y=paste("PC2", round(eigenvalA_single[2,]/eigenvalA_single_sum*100, digits=2), "%"),
       title = "PCA on subgenome A on single copy gene data")+
  scale_colour_discrete("Accession location") +
  theme(plot.title = element_text(hjust = 0.5))

gg2 <- ggplot(eigenvecA_single,aes(V3,V5, color=V2))+
  geom_point()+
  labs(x = paste("PC1", round(eigenvalA_single[1,]/eigenvalA_single_sum*100, digits=2), "%"),
       y=paste("PC3", round(eigenvalA_single[3,]/eigenvalA_single_sum*100, digits=2), "%"),
       title = "PCA on subgenome A on single copy gene data") +
  scale_colour_discrete("Accession location") +
  theme(plot.title = element_text(hjust = 0.5))

# PCA for subgenome B after beagle
eigenvecB_single<-read.table("results/350_subB_single_copy_pca.eigenvec_new")
eigenvecB_single <- na.omit(eigenvecB_single)
eigenvalB_single<-read.table("results/350_subB_single_copy_pca.eigenval")
eigenvalB_single <- na.omit(eigenvalB_single)
eigenvalB_single_sum <- sum(eigenvalB_single)

gg3 <- ggplot(eigenvecB_single,aes(V3,V4, color=V2)) +
  geom_point() +
  labs(x = paste("PC1", round(eigenvalB_single[1,]/eigenvalB_single_sum*100, digits=2), "%"), 
       y=paste("PC2", round(eigenvalB_single[2,]/eigenvalB_single_sum*100, digits=2), "%"),
       title = "PCA on subgenome B on single copy gene data") +
  scale_colour_discrete("Accession location") +
  theme(plot.title = element_text(hjust = 0.5))

gg4 <- ggplot(eigenvecB_single,aes(V3,V5, color=V2))+
  geom_point()+
  labs(x = paste("PC1", round(eigenvalB_single[1,]/eigenvalB_single_sum*100, digits=2), "%"),
       y=paste("PC3", round(eigenvalB_single[3,]/eigenvalB_single_sum*100, digits=2), "%"),
       title = "PCA on subgenome B on single copy gene data") +
  scale_colour_discrete("Accession location") +
  theme(plot.title = element_text(hjust = 0.5))
