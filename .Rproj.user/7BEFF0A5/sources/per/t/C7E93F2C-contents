#气泡图 
#变量少
symbols() 
?symbols
symbols(mtcars$disp, mtcars$wt, circles = mtcars$mpg)
symbols(mtcars$disp, mtcars$wt, squares  = mtcars$mpg)
symbols(mtcars$disp, mtcars$wt, circles = mtcars$mpg, 
        inches = F)
symbols(mtcars$disp, mtcars$wt, circles = mtcars$mpg, 
        inches = 0.5)
symbols(mtcars$disp, mtcars$wt, circles = mtcars$mpg, 
        inches = 0.35)
symbols(mtcars$disp, mtcars$wt, circles = sqrt(mtcars$mpg), 
        inches = 0.3)  #面积表示
symbols(mtcars$disp, mtcars$wt, circles = sqrt(mtcars$mpg), 
        inches = 0.3, bg='red', fg='green')

n<-nrow(mtcars)
heatcolors<-heat.colors(n+2, alpha=0.6)
barplot(rep(1,n), col=heatcolors)
mtcars<-mtcars[order(mtcars$mpg, decreasing=T), ]
mtcars
symbols(mtcars$disp, mtcars$wt, circles = sqrt(mtcars$mpg), 
        inches = 0.3, bg=heatcolors, fg=heatcolors,)

mdisp <- mean(mtcars$disp)
mwt <- mean(mtcars$wt)
symbols(mtcars$disp, mtcars$wt, circles = sqrt(mtcars$mpg), 
        inches = 0.3, bg=heatcolors, fg=heatcolors,)
#标注线条
abline(v=mdisp, h=mwt, col='grey', lty=2)
#分区域颜色
#分类 ifelse太复杂
install.packages("dplyr")
library(dplyr)
mtcars['disp_wt_class']<-case_when(mtcars$disp>mdisp & mtcars$wt>mwt~1, 
          mtcars$disp<mdisp & mtcars$wt>mwt~2,
          mtcars$disp<mdisp & mtcars$wt<mwt~3,
          mtcars$disp>mdisp & mtcars$wt<mwt~4)

mtcars$disp_wt_class

library(RColorBrewer)
display.brewer.all()
piyg<-brewer.pal(5, 'PiYG')
barplot(rep(1, 5), col=piyg, names.arg = 1:5)

col1<-piyg[1]
col2<-piyg[2]
col3<-piyg[5]
col4<-piyg[4]

symbols(mtcars$disp, mtcars$wt, 
        circles = sqrt(mtcars$mpg), inches = 0.3,
        bg=c(col1, col2, col3, col4)[mtcars$disp_wt_class], 
        fg='white', xlab='disp', ylab='wt', main='气泡图')
abline(v=mdisp, h=mwt, col='grey', lty=2)

#作业
#1 
library(dplyr)
mtcars$class <- case_when(mtcars$wt<3~1,
          mtcars$wt>3 & mtcars$wt<5~2,
          mtcars$wt>5~3)

#2
mtcars[c('wt', 'disp', 'class')]

#3

library(RColorBrewer)
display.brewer.all()
pair <- brewer.pal(3, 'YlGnBu')
col1 <- pair[1]
col2 <- pair[2]
col3 <- pair[3]

symbols(mtcars$qsec, mtcars$wt, 
        circles = sqrt(mtcars$disp), inches = 0.3,
        bg=c(col1, col2, col3)[mtcars$class],
        fg=c(col1, col2, col3)[mtcars$class]
        )

#方法2
cols <- brewer.pal(3, 'YlGnBu')
cols[2:3] <- paste(cols[2:3], 'D9', sep='')
colsn
symbols(mtcars$qsec, mtcars$wt, circles = sqrt(mtcars$disp), inches=0.3,
        bg=cols[mtcars$class], fg=cols[mtcars$class])
