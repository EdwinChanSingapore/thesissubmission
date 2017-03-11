library(ggplot2)
library(wesanderson)


df <- read.csv(file="C:\\Users\\User\\Documents\\thesis\\r_code\\Chromosome.csv", header=TRUE, sep=",")


df

sort(df[0], decreasing = FALSE)

df$Chromosome <- factor(df$Chromosome, levels = df$Chromosome[order(df$Type)])

d<- ggplot(df, aes(x=Type, y=MutationsPerBase, color=Chromosome)) +
  geom_bar(position="dodge", stat="identity",aes(fill=Chromosome), colour="light blue") +
  xlab("Chromosome") + ylab("Number Of Mutations Per Base") +
  theme(axis.text.x = element_text(size=14)) + ggtitle("Mutation Rate in Simulated Genome") +
  theme(plot.title = element_text(family = "Trebuchet MS", color="black", face="bold", size=16, hjust=0.5)) 

colfunc <- colorRampPalette(c("red3","yellow3","springgreen3","royalblue3"))

colfunc(25)

 
d  + scale_fill_manual(values=colfunc(25))


ggsave("C:\\Users\\User\\Documents\\thesis\\r_code\\MutationRateInSimulatedGenome.jpg")


