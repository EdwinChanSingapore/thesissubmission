library(ggplot2)
df <- read.csv(file="C:\\Users\\User\\Documents\\thesis\\r_code\\f1scores.csv", header=TRUE, sep=",")
cbPalette <- c("#000000","#999999", "#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2", "#D55E00", "#CC79A7")


d<- ggplot(df, aes(x=Type, y=Score)) +
  geom_bar(position="dodge", stat="identity",aes(fill=Name), colour="white") +
  coord_cartesian(ylim=c(0, 1)) + scale_y_continuous(breaks=c(0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1.0)) +
  xlab("") + ylab("F1 Score") + scale_fill_manual(values=cbPalette) +
  theme(axis.text.x = element_text(size=14))

d

d + scale_fill_brewer(type = "qual", palette = 6, direction = 1)


ggsave("C:\\Users\\User\\Documents\\thesis\\r_code\\firstplot.jpg")
