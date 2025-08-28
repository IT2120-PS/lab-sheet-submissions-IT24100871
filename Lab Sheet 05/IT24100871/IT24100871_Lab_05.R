#1
Delivery_Times <- read.table("Exercise - Lab 05.txt",header = TRUE,sep = " ")
attach(Delivery_Times)

#2
histogram <- hist(Delivery_Time_.minutes.,main = "Histogram for Deliver Times",breaks = seq(20,70,length = 10),right = TRUE)

#3
#Frequency is increasing from the begining and it peaks at 40
#After 40, Frequency is decreased till 50
#At 50, frequency is suddenly increased
#After 50s, frequency is again decreased

#4
breaks <- round(histogram$breaks)
freq <- histogram$counts

cum.freq <- cumsum(freq)

new <- c()
for(i in 1:length(breaks)){
  if(i==1){
    new[i]=0
  }else{
    new[i]=cum.freq[i-1]
  }
}

plot(breaks,new,type = 'l', main = "Cumalative Frequency Polygon for Deliver Times",xlab = "Deliver Times",ylab = "Cumalative Frequency",ylim = c(0,max(cum.freq)))
cbind(upper = breaks, cumfreq = new)
