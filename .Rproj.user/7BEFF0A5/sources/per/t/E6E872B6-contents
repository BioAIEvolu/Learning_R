#type 类型
#pch 点符号类型
#cex 点符号大小
#lty 线条类型
#lwd 线条宽度
#col 颜色
#xlim ylim x轴 轴范围
#main 标题
#xlab ylab x轴 y轴标签

?plot
?par
?pch
plot(mtcars$wt)
plot(mtcars$wt, mtcars$disp)
plot(mtcars)

#type
par(mfrow=c(3,3))

plot(mtcars$wt, mtcars$disp, type='p')
plot(mtcars$wt, mtcars$disp, type='l')
order(mtcars$wt)  #生成的wt的位置作为索引
mtcars <- mtcars[order(mtcars$wt), ]
mtcars
plot(mtcars$wt, mtcars$disp, type='l')
plot(mtcars$wt, mtcars$disp, type='b') #点线
plot(mtcars$wt, mtcars$disp, type='o') #穿过点的点线
plot(mtcars$wt, mtcars$disp, type='h') 
plot(mtcars$wt, mtcars$disp, type='s') #梯形图，先横后纵
plot(mtcars$wt, mtcars$disp, type='S') #梯形图，先纵后横
plot(mtcars$wt, mtcars$disp, type='n')  #空图

plot(mtcars$wt, mtcars$disp)

#pch
?pch
plot(mtcars$wt, mtcars$disp, pch=2)
#cex
plot(mtcars$wt, mtcars$disp, pch=2, cex=2)
plot(mtcars$wt, mtcars$disp, pch=2, cex=0.5)
#lty
plot(mtcars$wt, mtcars$disp, type='l', lty=1)
plot(mtcars$wt, mtcars$disp, type='l', lty=2)
plot(mtcars$wt, mtcars$disp, type='l', lty=3)
#lwd
plot(mtcars$wt, mtcars$disp, type='l', lty=3, lwd=2)
plot(mtcars$wt, mtcars$disp, type='l', lty=1, lwd=0.5)
#col
#下标、名称、16进制颜色值、RGB值
plot(mtcars$wt, mtcars$disp, type='l', lty=3, lwd=2, col='blue')
plot(mtcars$wt, mtcars$disp, type='l', lty=3, lwd=2, col=4)  #1到8的循环
plot(mtcars$wt, mtcars$disp, type='l', lty=3, lwd=2, col='#0000FF')
plot(mtcars$wt, mtcars$disp, type='l', lty=3, lwd=2, col=rgb(red=0, green=0, blue=1))
#xlim ylim
plot(mtcars$wt, mtcars$disp, type='l', lty=3, lwd=0.5, xlim=c(3,4), ylim=c(200,300))
#main
plot(mtcars$wt, mtcars$disp, type='l', lty=1, lwd=0.5, main='wt和disp的折线图')
#sub
plot(mtcars$wt, mtcars$disp, type='l', lty=1, lwd=0.5, main='wt和disp的折线图', sub='2019-09-21')
#xlab ylab
plot(mtcars$wt, mtcars$disp, type='l', lty=1, lwd=0.5, xlab='wt的取值', ylab='disp的取值')


#作业
mtcars <- mtcars[order(mtcars$mpg), ]
plot(mtcars$mpg, mtcars$qsec, pch=8) #1

library(readxl)
stock <- read_excel('stock.xlsx') #2

plot(stock$date, stock$investor_confidence_index, type='l')  #3


