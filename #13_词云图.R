#中文分词
library(jiebaR)
worker()
?worker
#分词引擎
mixseg <- worker(stop_word = 'chiese_stop_word.txt')
#分词
segment('我想吃饭', mixseg)

#对Excel
library(readxl)
tianmao<-read_excel('tianmaoTV.xlsx', skip=1)
tianmaoword_1 <- segment(tianmao$name, mixseg)
'吋' %in% tianmaoword_1
'吋' %in% tianmaoword
'超高清' %in% tianmaoword_1
show_dictpath()
edit_dict()

mixseg <- worker(stop_word = 'chiese_stop_word.txt')
tianmaoword_2 <- segment(tianmao$name, mixseg)
'超高清' %in% tianmaoword_2

#去除数字
gsub('a','A','abcA')
gsub('\\d','','1234kklm99')
word_new <- gsub('\\d','',tianmao$name)
tianmaoword_3 <- segment(word_new, mixseg)
freqtianmao<-table(tianmaoword_3)
freqtianmao<-sort(freqtianmao, decreasing = T)
library(wordcloud2)
wordcloud2(freqtianmao)

#调整比例
freqtianmao <- sqrt(freqtianmao)
#筛选掉那些词频太小的词语
freqtianmao <- freqtianmao[freqtianmao>5]
freqtianmao
wordcloud2(freqtianmao, size=0.6, color = 'random-light',
           fontWeight = 'bold')

library(RColorBrewer)
cols <- brewer.pal(11, 'Set3')
cols_2 <- colorRampPalette(cols)(length(freqtianmao))
wordcloud2(freqtianmao, size=0.6, color = cols_2,
           fontWeight = 'bold')

#作业
#1
library(readxl)
tianmao<-read_excel('tianmaoTV.xlsx', skip = 1)
#2
tianmao$description <- gsub('\\d','',tianmao$description)
#3
library(jiebaR)
show_dictpath()
edit_dict()
mixseg <- worker()
descword <- segment(tianmao$description, mixseg)
#4
c('大内存','全面屏') %in% descword
#5 
descfreq<-table(descword)
descfreq<-sort(freqtianmao, decreasing = T)
#6
#调整比例
descfreq <- sqrt(descfreq)
#筛选掉那些词频太小的词语
descfreq<-descfreq[descfreq>20]

library(wordcloud2)
wordcloud2(descfreq, size=0.6, color = 'random-light',
           fontWeight = 'bold')
