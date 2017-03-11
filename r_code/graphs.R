  library(ggplot2)
  df <- read.csv(file="C:\\Users\\User\\Documents\\thesis\\r_code\\f1scores.csv", header=TRUE, sep=",")
  
  
  ggplot(df, aes(x=Name, y=Score))+
    geom_bar(stat="identity",aes(fill=Name)) + facet_grid(.~Type) +
    coord_cartesian(ylim=c(0, 1)) + scale_y_continuous(breaks=waiver()) +
    scale_fill_discrete(name="Game") + xlab("") + ylab("Score")

  ggplot(df, aes(x=Type, y=Score)) +
    geom_bar(position="dodge", stat="identity",aes(fill=Name), color="white") +
    coord_cartesian(ylim=c(0, 1)) + scale_y_continuous(breaks=waiver()) +
    xlab("") + ylab("Score") + scale_fill_discrete(name="Game") +
    theme(axis.text.x = element_text(size=14))
  
  