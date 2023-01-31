rm(list=ls(all=TRUE))
set.seed(1234)
CFRF <- read.csv("CFRFsa.csv", fill = FALSE, header = TRUE)

library(icenReg)

BS <- CFRF[which(CFRF$site=='Bogue Sound'), ]
PP <- CFRF[which(CFRF$site=='Pasture Point'), ]
WC <- CFRF[which(CFRF$site=='Williston Creek'), ]
NB <- CFRF[which(CFRF$site=='Nelson Bay'), ]
ST <- CFRF[which(CFRF$site=='Straits'), ]
WM <- CFRF[which(CFRF$site=='Wilmington'), ]

BS_fit = ic_np(cbind(t1, t2) ~ line, data = BS)
PP_fit = ic_np(cbind(t1, t2) ~ line, data = PP)
WC_fit = ic_np(cbind(t1, t2) ~ line, data = WC)
NB_fit = ic_np(cbind(t1, t2) ~ line, data = NB)
ST_fit = ic_np(cbind(t1, t2) ~ line, data = ST)
WM_fit = ic_np(cbind(t1, t2) ~ line, data = WM)

BS_curves = BS_fit$scurves

plot(ST_fit,col=c('blue','orange','red','pink'),xlab='Date',ylab = 'Survival',lgdLocation = "bottomleft")

