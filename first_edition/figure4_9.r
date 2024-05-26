### code to create Figure 4.9 of Kloke & McKean 2014 ###

my.sincos<-sincos
my.sincos$y3<-my.sincos$y
my.sincos$y3[137] <- 800 

plot(y3~x,ylim=c(-50,50),data=my.sincos)
fit4 <- loess(y3 ~ x,data=my.sincos)
# lines(fit4$x,fit4$fitted,lty=2)
with(fit4,lines(x,fitted,lty=2))
fit5 <- loess(y3 ~ x,family="symmetric",data=my.sincos)
with(fit5,lines(x,fitted,lty=1))
legend('bottomleft',legend=c('Local Robust Fit','Local LS Fit'),lty=1:2)
title("loess Fits of Sine-Cosine Data")
