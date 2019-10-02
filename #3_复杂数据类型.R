#矩阵
#类型相同
m <- matrix(1:6, nrow=2, ncol=3, byrow=T, dimnames=list(c('r1', 'r2'), c('c1', 'c2', 'c3')))
m[1,1]
m[1,]
m[,1]
m[c(T, F),]
m['r1',]
#修改
m[1,] <- c(100,99,98)
m[1,] <- 100
t(m)

#数组
# 数组维度可以大于2
array(1:10)
array(1:10, dim=c(2,5))
dim1 <- c('A1', 'A2')
dim2 <- c('B1', 'B2', 'B3')
dim3 <- c('C1', 'C2')
arr3 <- array(1:12, dim=c(2,3,2), dimnames=list(dim1, dim2, dim3))      
arr3[,,'C1']
arr3[,,1]
arr3[,,c(T,F)]


#数据框
data.frame()
student <- data.frame(ID=c(1001, 1002, 1003),
                      NAME=c('lili', 'bob', 'sam'),
                      GENDER=c('F','M','M'),
                      stringsAsFactors = F)

student[1,1] <- 1009
student[1,]
student[,1]
student[,'ID']  #返回向量
student['ID']   #返回数据框
student$ID      #返回向量
student[c('ID', 'NAME')]


#列表
list1 <- list(a=1, b='char', c=m, d=student)
list1[[1]]
list1[['a']]
list1[[4]]
list1[['d']]

list1[4]
class(list1[4])


#作业
#1
A <- matrix(1:12, nrow = 3, ncol = 4, byrow = FALSE)
A
B <- matrix(1:12, nrow = 3, ncol = 4, byrow = TRUE)
B

#2
B[,1] <- 100
B

#3
wdata <- data.frame(ID=c(1,2,3),
                    name=c('张三','李四','王五'),
                    weight=c(60,70,80),
                    stringsAsFactors = FALSE)


#4
wdata[c(1,3), ]

#5
wlist <- list(A, B, wdata)
wlist
wlist[[1]]
