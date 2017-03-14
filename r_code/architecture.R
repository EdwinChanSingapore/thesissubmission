library(ggplot2)
df <- read.csv(file="C:\\Users\\User\\Documents\\thesis\\r_code\\architecture.csv", header=TRUE, sep=",")

df$Name <- factor(df$Name, levels = df$Name[order(df$Order)])
df$Metric <- factor(df$Metric, levels = df$Metric[order(df$Order)])

d <- ggplot(df, aes(x=Metric, y=Score))+
  geom_bar(stat="identity",aes(fill=Metric),width=0.5) + facet_grid(.~Name) +
  coord_cartesian(ylim=c(0, 1)) + scale_y_continuous(breaks=waiver()) +
  scale_fill_discrete(name="Game") + xlab("") + ylab("Score") + theme(axis.text.x = element_text(angle = 90, hjust = 1))+ ggtitle("Comparison of Architectures") +
  theme(plot.title = element_text(family = "Trebuchet MS", color="black", face="bold", size=16, hjust=0.5)) 

d



ggsave("C:\\Users\\User\\Documents\\thesis\\r_code\\architecture.jpg")
