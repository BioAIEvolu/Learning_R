colors()
a<-1:26
b<-1:26
d<-merge(a,b) #笛卡尔积
d<-d[1:657, ]
plot(d$x, d$y, col=colors(), cex=3, pch=15)

for (i in 1:26) {
    for (j in 1:26) {
      text(i, j, labels=i+(j-1)*26, cex=0.5)
    }
}

plot(1:10, col=colors()[26], pch=15, cex=4)

#调色板
rainbow()
heat.colors() #渐变色 红橙黄白
terrain.colors()  # 绿黄白
topo.colors() #蓝绿黄

plot(1:10, rep(1, 10), col=rainbow(10, alpha=0.5), pch=15, cex=5)
plot(1:10, rep(1, 10), col=heat.colors(10, alpha=0.5), pch=15, cex=5)
plot(1:10, rep(1, 10), col=terrain.colors(10, alpha=0.5), pch=15, cex=5)
plot(1:10, rep(1, 10), col=topo.colors(10, alpha=0.5), pch=15, cex=5)
plot(1:10, rep(1, 10), col=cm.colors(10, alpha=0.5), pch=15, cex=5)


#扩展颜色
colorRampPalette(c('yellow', 'red'))
col1 <- colorRampPalette(c('yellow', 'red'))(50)  #函数实例化

plot(1:50, col=col1, pch=16, cex=2)

mtcars
plot(mtcars$wt, mtcars$disp, col=col1, pch=16,cex=2)
#wt联动颜色
mtcars<-mtcars[order(mtcars$wt), ]
plot(mtcars$wt, mtcars$disp, col=col1, pch=16,cex=2)

#将颜色映射到另一个变量上 图像代表三个变量

#配色方案
library(RColorBrewer)
display.brewer.all()
col2<-brewer.pal(8, 'Accent')
plot(1:8, rep(1, 8), col=col2, pch=16, cex=2)

# col2<-brewer.pal(20, 'Accent')


library(colorspace) #HSL
hcl_palettes(plot=T)
col3<-qualitative_hcl(8, 'Warm')
plot(1:8, rep(1,8), col=col3, pch=16, cex=3)
col3<-sequential_hcl(8, 'Grays')
plot(1:8, rep(1,8), col=col3, pch=16, cex=3)
col3<-diverge_hcl(8, 'Blue-Red')
plot(1:8, rep(1,8), col=col3, pch=16, cex=3)

#作业
library(RColorBrewer)
display.brewer.all()
brewer.pal.info
col1 <- brewer.pal(9, 'Set1')
plot(1:8, rep(1, 8), col=col1, pch=16, cex=2)  #1

#2 扩展颜色
col2 <- colorRampPalette(col1)(30)
#col2 <- colorRampPalette(brewer.pal(9, 'Set1'))(30)
par(mar=c(12,4,12,4))
plot(1:30, rep(2, 30),col=col2, pch=15, cex=2)

#3
display.brewer.all()
col3 <- colorRampPalette(brewer.pal(8, 'Set1'))(30)

par(mar=c(4,4,4,4))
plot(1:30, rep(2, 30), col=col2, pch=15, cex=2)

plot(1:30, rep(2, 30), col=col3, pch=15, cex=3)

#4 
x <- mtcars$wt
y <- mtcars$disp
mtcars <- mtcars[order(mtcars$hp), ]
col3<-brewer.pal(9, 'Greens')
col4<-colorRampPalette(col3)(nrow(mtcars))

#col4 <- colorRampPalette(c('White', 'Green'))(length(mtcars$wt))
plot(mtcars$wt, mtcars$disp, col=col4, pch=16, cex=2.6)
