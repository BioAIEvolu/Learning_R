?barplot
barplot(1:5)
mtcars$gear
#计算频数
x <- table(mtcars$gear)
barplot(x, names.arg=c('齿轮数-3', '齿轮数-4', '齿轮数-5'), 
        ylim=c(0,20))

#堆叠条形图
x1<-table(mtcars[c('vs', 'gear')])
barplot(x1, beside=T, col=c('Yellow', 'Red'),
        legend.text = c('VS-0', 'VS-1'))
# beside
#配色 
red <- grep('red', colors(), value=T, ignore.case = T) #value=T, 输出结果
length((red))
barplot(height = rep(1, 27), col=red, names.arg = red, 
        horiz = T, las=1, cex.names=0.5, xaxt='n')

#饼图
?pie
a<-1:4
pie(a)
names(a)<-LETTERS[1:4]
 a
pie(a) 

pie(a, labels=LETTERS[1:4], clockwise = T,
    col=terrain.colors(4), border='White')

 #排列方向
pie(rev(a), labels = rev(LETTERS[1:4]), clockwise = T,
    col=terrain.colors(4), border = 'White')

#箱线图
r <- rnorm(50,0,1)
b <- c(r, 5, 6, -5, -6)
y<-boxplot(b)
y$stats
y$out

r2 <- c(rnorm(50,0,1), rnorm(50, 10, 1))
r2
r3 <- c(rep(c('class1', 'class2'), times=c(50,50)))
r3
randomdata <- data.frame(r2, r3)
randomdata
boxplot(r2~r3, data=randomdata) 

#作业
#1
greens <- grep('green', colors(), value = T, ignore.case = T)
length(greens)
par(mar=c(2,6,2,6))
barplot(height = rep(1, length(green)), col=greens, names.arg = greens,
        horiz = T, las=1, cex.names=0.5, xaxt='n', border = greens)

#2
carb <- table(mtcars$carb)
carb <- sort(carb, decreasing = T)
#carb <- carb[order(carb, decreasing = T)]
carb

library(RColorBrewer)
cols<-brewer.pal(6, 'Set3')

paste('carb-', names(carb))
pie(carb, labels=paste('carb-', names(carb)), cex=0.4, 
    border = cols, col=cols, clockwise = T)

pie(rev(carb), 
    labels = c('carb 1', 'carb2', 'carb3', 'carb4', 'carb5', 'carb6'),
    clockwise = T, col=terrain.colors(6), border = 'White', cex=0.5)


#3
library(readxl)
stock<-read_excel('stock.xlsx')
box <- boxplot(stock$SH_closing_price)
box$out
box$stats
