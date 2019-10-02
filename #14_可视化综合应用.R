#构造自己想要的统计量
library(readxl)
tianmao<-read_excel('tianmaoTV.xlsx', skip=1)
#求品牌的平均销售价格
price_brands <- aggregate(tianmao['current_price'], 
                          by=list(brands=tianmao$brand), FUN = mean) 
#分类汇总 将数据按行进行分组 对每一组数据进行函数统计，将结果以表格形式返回出来
#by传入的是list

price_brands<-
  price_brands[order(price_brands$current_price, decreasing = T), ][1:10,]

price_brands$brands
guochan_vector<-c("AOC","Hisense/海信", "乐视TV", "Skyworth/创维", "Haier/海尔")
price_brands$guochan<-ifelse(price_brands$brands%in%guochan_vector,1,0)

par(mar=c(5,5,2,2))

price_brands<-
  price_brands[order(price_brands$current_price), ]

x<-barplot(price_brands$current_price, 
        names.arg=price_brands$brands, 
        horiz = T, las=1,
        cex.names=0.6, 
        border = NA,
        col='grey',axe=F, xlim=c(0,10000))

#美化
#1. 缩小标签字体
#2. 颜色备注国产品牌
guochan_price_vector <- price_brands$current_price * price_brands$guochan

barplot(guochan_price_vector, names.arg=F, horiz = T, border = NA,
        col='orange1', axes=F, add=T)  #add = T 不覆盖原本的图像
axis(side=1, at=c(0,2000,4000,6000,8000,10000),
     labels=c(0,2,4,6,8,'10(千元)'), tick=F, cex.axis=0.6)
      # tick=F 去除刻度
      # cex.axis调整标签大小

x
rect(0,-0.5,5000,x[10]+x[1], col=rgb(191,239,255,80, maxColorValue = 255), border=NA) #低级绘图函数 左下角坐标+右上角坐标
rect(5000,-0.5,10000,x[10]+x[1], col=rgb(191,239,255,110 , maxColorValue = 255), border=NA) #低级绘图函数 左下角坐标+右上角坐标
# rgb(x,x,x,透明度)

#作业
#1
library(readxl)
tianmao<-read_excel('tianmaoTV.xlsx', skip=1)
#2
brand_amount<-aggregate(tianmao['month_sales_count'],
                       by=list(brands=tianmao$brand), FUN=sum)
brand_amount <- brand_amount[order(brand_amount$month_sales_count, 
                                   decreasing = T), ][1:10, ]
#3
brand_amount <-  brand_amount[order(brand_amount$month_sales_count), ]

brands_vector<-c('Xiaomi/小米','Haier/海尔','Hisense/海信')
brand_amount$three_brands <- ifelse(brand_amount$brands %in% brands_vector, 1, 0)
three_brands_amount <- brand_amount$month_sales_count * brand_amount$three_brands

par(mar=c(5,6,7,2))

barplot(brand_amount$month_sales_count, names.arg = brand_amount$brands,
        horiz = T, las=1,
        cex.names=0.6,
        border=NA,
        col='grey',axe=F, xlim=c(0,100000))




barplot(three_brands_amount, names.arg = F, horiz = T,
        border=NA, col='orange1', axes=F, add=T)

axis(side=1, at=c(0,50000,100000),
     labels = c(0,5,'10(万台)'),
     tick=F, cex.axis=0.6)

