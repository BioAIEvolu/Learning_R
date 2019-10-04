library(readxl)
stock <- read_excel("stock.xlsx")
plot(stock$date, stock$SH_closing_price, type='l')
lines(stock$date, stock$investor_confidence_index, lty=2)

par(mfrow=c(1,2))
plot(stock$date, stock$SH_closing_price, type='l',
     xlab='时间', ylab='上证指数收盘价')
plot(stock$date, stock$investor_confidence_index, type='l',
     xlab='时间', ylab='投资者信心指数')

#双坐标图

par()$mar
par(mar=c(5,4,4,4))


plot(stock$date, stock$SH_closing_price, type='l', 
     ylab='上证指数收盘价', xlab='时间',
     main='投资者信心指数VS上证指数收盘价')
par(new=T)      #新生成的图不覆盖原本的图
plot(stock$date, stock$investor_confidence_index, type='l', lty=2, 
     ann=F, yaxt='n')
#ann=F 不显示标题、标签
# yaxt='n' 不显示Y轴的刻度线

axis(side=4)

mtext(text='投资者信息指数', side=4, line=2)
#图例
legend('topright', legend=c('SH收盘价','信心指数'), 
       lty=c(1, 2), bty='n')


#作业
par()$mar
par(mar=c(5,4,4,4))

library(readxl)
stock <- read_excel('stock.xlsx') #1
returndaily <- read_excel('returndaily.xlsx') #2

plot(returndaily$date, returndaily$SH_return_daily, 
     type='l', col='dimgrey',
     xlab='时间', ylab='上证指数收益率',
     main='上证指数收益率VS投资者信息指数')

par(new=T)

plot(stock$date, stock$investor_confidence_index,
     type='o', lty=1, pch=8, ann=F, yaxt='n', xaxt='n', cex=0.6)
axis(side = 4)
mtext(text='信心指数', side=4, line=2)
legend('topright', legend = c('SH收益率', '信心指数'),
        col=c('dimgrey', 'black'), lty=c(1,1), pch=c(NA, 8),
        bty='n', cex=0.6)

