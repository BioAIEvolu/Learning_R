#abline() 添加横、竖线
#lines() 添加线条
#points() 添加点

library(readxl)
stock <- read_excel('stock.xlsx')
plot(stock$date, stock$SH_closing_price, type='l')
abline(h=3000, v=as.POSIXct('2015-01-30'), col='grey')
lines(stock$date, stock$SZ_closing_price, lty=2)
range(stock$SZ_closing_price)
#####在plot设定ylim 
plot(stock$date, stock$SH_closing_price, type='l',
     ylim=c(1500, 13000))
abline(h=3000, v=as.POSIXct('2015-01-30'), col='grey')
lines(stock$date, stock$SZ_closing_price, lty=2)
range(stock$SZ_closing_price)



plot(stock$SH_closing_price, stock$investor_confidence_index, type='l')
stock1 <- stock[order(stock$SH_closing_price), ]
stock1$SH_closing_price
plot(stock1$SH_closing_price, stock1$investor_confidence_index, type='l')


#散点图
stock$stock_class <- ifelse(stock$SH_closing_price<3000, 1, 2)
stock[c('SH_closing_price', 'stock_class')]

stock1 <- subset(stock, stock_class==1)
stock2 <- subset(stock, stock_class==2)
plot(stock1$SH_closing_price, stock1$investor_confidence_index, pch=16,
     col='blue', xlim=range(stock$SH_closing_price),
     ylim=range(stock$investor_confidence_index))

points(stock2$SH_closing_price, stock2$investor_confidence_index, pch=17,
     col='green', xlim=range(stock$SH_closing_price),
     ylim=range(stock$investor_confidence_index))


#映射简化
c('blue', 'green')[c(1,2,1,2)]
plot(stock$SH_closing_price, stock$investor_confidence_index,
     col=c('blue', 'green')[stock$stock_class],
     pch=c(16, 17)[stock$stock_class])


#matplot  一次性化多个行
matplot(stock$date, stock[, 2:4], lty=1:3, type='l',
        col='black')


#作业
library(readxl)
stock_2 <- read_excel("stock.xlsx")   #1

stock_2$class <- ifelse(stock_2$SH_closing_price<2500, 1,
                      ifelse(stock_2$SH_closing_price<3500, 2, 3))  #2

data <- stock_2[c('SH_closing_price', 'class')]  #3

plot(stock_2$SH_closing_price, stock_2$HSCI_closing_price,
     col=c('green', 'blue', 'red')[stock_2$class], pch=16,
     xlab='SH', ylab='HSCI',
     main='上证指数VS恒生指数收盘价')   #4

