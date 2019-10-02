library(readxl)
returndaily <- read_excel('returndaily.xlsx')
x<-returndaily$SH_return_daily
#直方图
y<-hist(x, breaks=100)

x_breaks <- seq(min(x), max(x), length.out = 101) #100个
x_breaks
y<-hist(x, breaks = x_breaks, freq=F) 
# freq=F 概率密度
# freq=T 频数
y$breaks[2] - y$breaks[1]  #长度
y$counts #每个单元格对应的数据点的数量
y$density #每个单元格对应对的概率密度
y$density * (y$breaks[2] - y$breaks[1]) #每个组对应的概率
sum(y$density * (y$breaks[2] - y$breaks[1]))

#估计变量概率密度图的方法二：核密度图（曲线）法，非参数估计
#用样本的核密度曲线估计总体的概率密度函数
# 核密度估计的方法：峰值函数拟合数据点，最常用：高斯核
# 在函数里面设定想要额核函数情况

#带宽 带宽越小，表面的区域越大，画出的曲线越不平滑
#反之亦然，更抽象
z <- density(x,bw=0.001)
plot(z)
z$bw  #带宽

#两个图画在一起
y<-hist(x, breaks = x_breaks, freq=F, col='red', border='white') 
lines(density(x,bw=0.001),col='blue')
#生成正态分布
a <- rnorm(1000, 0, 1)
par(mfrow=c(1, 2))
y<-hist(x, breaks = x_breaks, freq=F, col='red', border='white') 
lines(density(x,bw=0.001),col='blue')

hist(a, freq=F, breaks = 100, main='正态分布', col='red', border='white')
lines(density(a, bw=0.5), col='blue')

library(fBasics)
describe <- function(x){
  #变量统计量 描述性统计的结果
  m<-mean(x)
  v<-var(x)
  s<-sd(x)
  #偏度 度量变量的三阶矩 关于变量是否在均值附近对称的，偏斜方向和程度的度量
  
  ske<-skewness(x)
  #丰度 变量的四阶距 度量变量的尾部厚度 正态超额风度：0  大于0：尖峰
  kur<-kurtosis(x)  #计算超额风度 一般风度+3
  #检验是否正态分布
  # 哈尔克贝拉检验
  jar<-jarqueberaTest(x)
  # p值非常小，拒绝原假设
  p<-jar@test$p.value
  
  return(c('均值'=m, '方差'=v, '标准差'=s,
           '偏度'=ske, '峰度'=kur, 'p值'=p))
}

describe(x)
describe(a)


#作业
library(readxl)
returndaily <- read_excel('returndaily.xlsx')  #1
x <- returndaily$SZ_return_daily
x_breaks <- seq(min(x), max(x), length.out = 101)

z <- density(x, bw=0.001)

y <- hist(x, freq = F, breaks = x_breaks, 
          col='White', border = 'Black', 
          main='SZ收益率的直方图和核密度图',
          xlab='收益率', xlim=c(-0.04, 0.03))  #2

lines(z) #2

library(fBasics)
describe2 <- function(variables) {
  #均值
  m <- mean(x)
  #方差
  v <- var(x)
  #标准差
  s <- sd(x)
  #偏度
  ske <- skewness(x)
  #超额峰度
  kur <- kurtosis(x)
  #判定是否正态分布——哈尔克贝拉检验
  jar <- jarqueberaTest(x)
  p <- jar@test$p.value
  
  return(c('均值'=m, '方差'=v, '标准差'=s, '偏度'=ske,
         '峰度'=kur, 'p值'=p))
  
}

describe2(x)  #3 

