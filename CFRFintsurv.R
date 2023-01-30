rm(list=ls(all=TRUE))
set.seed(1234)
CFRF <- read.csv("CFRFsa.csv", fill = FALSE, header = TRUE)

library(icenReg)

BS <- CFRF[which(CFRF$site=='Bogue Sound'), ]

np_fit = ic_np(cbind(t1, t2) ~ line, data = BS)


plot(np_fit,col=c('blue','orange','red','pink'),xlab='Date',ylab = 'Survival')


