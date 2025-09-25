#1
data<-read.table("Exercise - LaptopsWeights.txt",header = TRUE)
fix(data)
attach(data)

popmn<-mean(Weight.kg.)
popvar<-var(Weight.kg.)
popsd<-sqrt(popvar)

print(popmn)
print(popsd)

#2
samples<-c()
n<-c()

for (i in 1:25) {
  s<-sample(Weight.kg.,6,replace = TRUE)
  samples<-cbind(samples,s)
  n<-c(n,paste('s',i))
}

colnames(samples)=n

s.means<-apply(samples,2,mean)
s.vars<-apply(samples,2,var)
s.sd<-sqrt(s.vars)

print(s.means)
print(s.sd)

#3
samplemean<-mean(s.means)
samplevars<-var(s.means)
samplesd<-sqrt(samplevars)

print(samplemean)
print(samplesd)

popmn
samplemean

truevar=popvar/6
truesd=sqrt(truevar)
truesd
samplesd
