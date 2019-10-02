#散点图矩阵
# 连续型数据
mdata <- mtcars[c('mpg', 'disp', 'hp', 'drat', 'wt')] 
mdata
?pairs
pairs(mdata, col='blue', pch=16, lower.panel = NULL)

panelfun <- function(x, y){
  #低级函数
  points(x,y, col='blue') #颜色在函数里面修改
  abline(lm(y~x), col='green')  #y对X的回归线
}
pairs(mdata, panel = panelfun)

install.packages('car')
library(car)
spm(mdata, smooth=F, diagonal=list(method='histogram'))

#相关系数 相关图像
# pr性相关系数 受异常值的影响大 协方差/标准差的乘积
# spam相关系数 数据的秩 将数据进行排序 再计算的相关系数 
#受异常值的影响比较小
#肯达尔相关系数 跟秩比较相关的系数 计算分类变量的相关系数

cor() #默认pr性相关系数
corr1<-cor(mdata)
cor(mdata, method='spearman')
cor(mdata, method='kendall')

install.packages('ggcorrplot')
library(ggcorrplot)
ggcorrplot(corr1, lab=T, hc.order = T,
           type='upper') #将相关系数矩阵，可视化地展示出来
#hc.order = T 层次聚类的算法排序

#散点密度热图
# 数据量多 数据量重叠很严重
a <- rnorm(5000, 0, 1)
b <- rnorm(5000, 0, 3)
smoothScatter(a, b, cex=2, nrpoint=4)
smoothScatter(a, b, cex=2, nrpoint=Inf)

#美观
plot(a,b, col=densCols(a, b), pch=20, cex=1.5)
# densCols() 根据点的密度生成对的颜色向量
# 修改对应密度颜色
?densCols
plot(a,b, col=densCols(a, b, colramp=colorRampPalette(c('yellow', 'red'))),
     pch=20, cex=1.5)
#colramp=colorRampPalette(c('yellow', 'red'))) 向量形式
densCols(a, b, colramp=colorRampPalette(c('yellow', 'red')))

#绘制函数曲线图像
?curve
curve(log(x)+sqrt(x)+x^2, from=1, to=100, n=10000, 
      main=expression(log(x)+sqrt(x)+x^2), 
      ylab='y')

#作业
#1
#方法1
longley
loneley <- longley[, ! names(longley) %in% "Year"]

#方法2：
library(car)
spm(loneley, smooth=F, diagonal=list(method='histogram'))

#2
pairs(loneley, upper.panel = NULL)

#3
cor1 <- cor(loneley)
library(ggcorrplot)
ggcorrplot(cor1, lab=T, hc.order=T, type='upper')

#4
curve(x^3+sin(x), from=0, to=10, n=1000,
      main=expression(x^3+sin(x)), ylab='f(x)')
