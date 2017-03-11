library(ggplot2)
df <- read.csv(file="C:\\Users\\User\\Documents\\thesis\\r_code\\headsupcomparison.csv", header=TRUE, sep=",")

df$Name <- factor(df$Name, levels = df$Name[order(df$Order)])

d<- ggplot(df, aes(x=Name, y=Score)) +
  geom_bar(stat="identity",aes(fill=Type)) +
  scale_fill_discrete(name="Game") + xlab("") + ylab("F1 Score") + theme(axis.text.x = element_text(angle = 90, hjust = 1))+
  ggtitle("Final F1 Score Differences") +
  theme(plot.title = element_text(family = "Trebuchet MS", color="black", face="bold", size=16, hjust=0.5)) 
d

ggsave("C:\\Users\\User\\Documents\\thesis\\r_code\\headsupcomparison.jpg")
