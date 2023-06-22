#### Functions

m<-2+2
m
sqrt(m)
f<-40*40
f

sqrt(f)
x<-100-20

#### Sequences

seq(1,10)# sequence of 1 to 10

seq(10,100,5) #sequence of 10 to 100 with a difference of 5

seq(by=-5,100,10) # Sequence of 5 to 100 with a difference of 10
seq(1,50,by=10)

n<-seq(20,100)
n
mean(n)
median(n)
mode(n)
sd(n)# standard deviation
var(n)# variance
quantile(n)
boxplot(n)# boxplot
hist(n)# histogram

####  vectors
v<-c(1,9,5,10)#numeric data
class(v)
k<-c("faith","grace","valine");k
b<-c("grace","mercy","jonh");b
class(b)
nchar(b) # nchar function is used to calculate the size of a string
class(k)
nchar(k) # data class/type

plot(1:10)

##### List

l1<-list(first=c(1,3,6),second=seq(1,10),third="apple",fourth=b);l1

#### Matrix

#the syntax of matrix()function is matrix(vector,nrow,ncol,byrow)
m1<-matrix(seq(1:10), nrow=5, ncol=2, byrow=TRUE);m1
m2<-matrix(seq(1:10), nrow=2, ncol=5, byrow=FALSE);m2
m3<-matrix(seq(1:10), nrow=2, ncol=5);m3
m4<-matrix(seq(1:10), nrow=5, byrow=TRUE);m4

#Create a two by two matrix
j<-c(1,2,1,2);j


v1=c(1,2,3,4)
v2=c("apple","mango","banana")

m1=matrix(seq(1:10), nrow =5, ncol = 2, byrow = TRUE);m1
m2=matrix(seq(1:16), nrow = 4, ncol = 4, byrow = TRUE);m2

A1=array(seq(1:16), dim=c(2,4,2));A1
A2=array(seq(2:20), dim=c(3,2,3));A2

D1<-data.frame(name=c("val", "mercy", "rael","tim"), height=c(20,40,50,60), maritalstatus=c("single", "married", "divorce","married"))
D1
