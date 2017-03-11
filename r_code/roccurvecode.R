  library(ggplot2)
  df <- read.csv(file="C:\\Users\\User\\Documents\\thesis\\r_code\\roc.csv", header=TRUE, sep=",")
  cbPalette <- c("#000000","#999999", "#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2", "#D55E00", "#CC79A7")
  
  
  ggplot(df,aes(Recall,Precision))+geom_line(size = 1.5, alpha = 1, aes(colour = Recall))+ 
    labs(title= "Receiver Operator Characteristic Curve", 
         x = "False Positive Rate (1-Specificity)", 
         y = "True Positive Rate (Sensitivity)")  +
    theme(plot.title = element_text(family = "Arial", color="black", face="bold", size=18, hjust=0.5))+
    theme(text = element_text(size=14),axis.text=element_text(size=16)) 
  
  
  ggsave("C:\\Users\\User\\Documents\\thesis\\r_code\\roc.jpg")
