library(ggplot2)
df <- read.csv(file="C:\\Users\\User\\Documents\\thesis\\r_code\\trainingweights.csv", header=TRUE, sep=",")

par(mar = c(5,5,2,5))
with(df, plot(Epoch, acc, type="l", col="red3", 
             ylab=expression(-log[10](italic(p))),
             ylim=c(0,3)))

par(new = T)
with(df, plot(Epoch, loss, pch=16, axes=F, xlab=NA, ylab=NA, cex=1.2))
axis(side = 4)
mtext(side = 4, line = 3, 'Number genes selected')
legend("topleft",
       legend=c(expression(-log[10](italic(p))), "N genes"),
       lty=c(1,0), pch=c(NA, 16), col=c("red3", "black"))