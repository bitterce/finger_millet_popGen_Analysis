# 20200708 plink1 350 pca test
# https://github.com/chiarabarbieri/Bio373_Blockcourse

args = commandArgs(trailingOnly=TRUE)
path_basename <- args[1]
title <- args[2]
dir_basename <- dirname(path_basename)
if(is.na(args[3])){
  pca <- "12"
}else{
  pca <- args[3]
}
if(is.na(args[2])){
  cat("usage: Rscript plink1_pca12.r path_basename title (pca=12)\n")
  q()
}

library.path <- "/usr/local/ngseq/packages/Dev/R/4.0.1/lib/R/library"
.libPaths(c(library.path, .libPaths()))
library("ggplot2")
library("RColorBrewer")
#library("colorRamps")

plink_pca <- function(basename, title, file_out=F, pca="12"){
  eigenvec<-read.table(paste(basename, ".eigenvec_new", sep=""))
  eigenval<-read.table(paste(basename, ".eigenval", sep=""))
  eigenval_sum <- sum(eigenval)
  if(pca == '12'){
    gg <- ggplot(eigenvec,aes(V3,V4, color=V2))+
      geom_point()+
      labs(x = paste("PC1", round(eigenval[1,]/eigenval_sum*100, digits=2), "%"), y=paste("PC2", round(eigenval[2,]/eigenval_sum*100, digits=2), "%"),title = title)
  }else{
    gg <- ggplot(eigenvec,aes(V3,V5, color=V2))+
      geom_point()+
      labs(x = paste("PC1", round(eigenval[1,]/eigenval_sum*100, digits=2), "%"), y=paste("PC3", round(eigenval[3,]/eigenval_sum*100, digits=2), "%"),title = title)
  } 

  if(file_out){
    file_basename <- basename(basename)
    if(pca == '12'){
      out_file = paste(file_basename, "12.png", sep="")
    }else{
      out_file = paste(file_basename, "13.png", sep="")
    }
    print(out_file)
    gg
    ggsave(out_file)
  #  png(out_file)
  #  print(gg)
  #  dev.off()
  }else{
    gg
  }  
}

#plink_pca("Run1A_plink1_pca", "Run1A")
plink_pca(path_basename, title, T, pca)


