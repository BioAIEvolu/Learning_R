install.packages('readxl')
library(readxl)
tianmao <- read_excel('./tianmaoTV.xlsx', skip=1)
#创建新变量
tianmao['total_sales'] <- tianmao$current_price * tianmao$month_sales_count
tianmao[c('current_price', 'month_sales_count', 'total_sales')]

tianmao$discount <- tianmao$current_price / tianmao$original_price
tianmao$discount

a <- 1:10
ifelse(a%%2==0, '偶数', '奇数')  #向量批量

tianmao['price_class'] <- ifelse(tianmao$current_price<1000, '低价',
                                 ifelse(tianmao$current_price<=2000, '适中', '高价'))

tianmao[c('price_class', 'current_price')]


#重命名
names(tianmao)
names(tianmao)[1] <- '名称'
names(tianmao)

names(tianmao) %in% 'weight'
names(tianmao)[names(tianmao)%in%'weight'] <- '重量'
names(tianmao)

#提取子集
#踢除变量
newdata <- tianmao[, -c(1:3)]
names(newdata)
names(tianmao)

col1 <- c('名称', 'description', 'current_price')
logital <- names(tianmao)%in%col1
newdata1 <- tianmao[, !logital]

tianmao[1, ]
logit1 <- tianmao$brand=='Xiaomi/小米'
xiaomi <- tianmao[logit1, ]

xiaomi1 <- subset(tianmao, brand=='Xiaomi/小米', c('名称', 'description'))

#作业
library(readxl)
tianmao2 <- read_excel('./tianmaoTV.xlsx', skip=1)   #1

tianmao2[tianmao2$current_price < 1000, ]  #2
subset(tianmao2,current_price < 1000)

tianmao2['stock_classs'] <- ifelse(tianmao2$stock==0, '无货',
                               ifelse(tianmao2$stock<100, '低存货', '高存货'))  #3

tianmao2[c('stock', 'stock_price')]  #4

logit2 <- names(tianmao2) %in% c('shop_id', 'shop_name')  #5
newtianmao2 <- tianmao2[, !logit2]
names(newtianmao2)  
