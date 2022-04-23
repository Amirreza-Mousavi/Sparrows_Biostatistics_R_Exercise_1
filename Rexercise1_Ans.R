###SeyyedAmirreza Mousavi Majd
###R exercise 1 answers

#1.a
dat=read.table("Sparrows.csv",header = T)
View(dat)
#Bad import of the data

#1.b
#According to the manual of ?read.table, the default value for the 'sep' argument 
#is "" whereas our data is in .csv format which means the data is seperated by a comma.
#That is why we observe an incorrect import of the data

#1.c
dat=read.table("Sparrows.csv",header = T,sep = ",")
View(dat)
#works fine

#2.a
str(dat)

#2.b
#yes. the "summary" function can provide an overview of the data as well
summary(dat)

#2.c
head(dat,n=10)
tail(dat,n=15)

#3.a
dat=dat[,-1]

#3.b
dat=dat[-(which(duplicated(dat))),]

#3.c
levels(as.factor(dat$Treatment))

#4.a
which(is.na(dat$WingLength))

#4.b
dat$WingLength[which(is.na(dat$WingLength))]=c(26,16,30,30.5,30.5,29)
which(is.na(dat$WingLength))
#returns integer(0) which means no NA exists in the WingLength data.

#5.a
Sparrows_sorted=dat[order(dat$Weight,dat$WingLength),]

#5.b
tail(dat[order(dat$WingLength),],n=6)

#6.a
write.csv(Sparrows_sorted,"Sparrows_sorted.csv")

#6.b
rm(list=ls())
