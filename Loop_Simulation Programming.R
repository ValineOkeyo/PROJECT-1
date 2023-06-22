## if statement/framework
a = 10;     ## just a guess
print(a);
if(a == 20) cat("The number is equal to 'a' = ",a,"\n\n");

a = 20;
print(a);
if(a == 20) cat("The number is equal to 'a' = ",a,"\n\n");
if(a == 20) cat("The number is equal to \t\t\t'a' = ",a,"\n-\n-\n");

## if-else framework
a = 12;
if (a == 20) {
  cat("The number is equal to 'a' = ",a,"\n\n");
} else {
  cat("The number is NOT equal to 'a'\n\n");
} 

a = 20;
if (a == 20) {
  cat("The number is equal to 'a' = ",a,"\n\n");
} else {
  cat("The number is NOT equal to 'a'\n\n");
} 
a = 20;           ## Initialize a
print(a);
x = 20;           ## Input the value of "a"
print(x);

if (x < a) {
  cat("The number x = ",x," is LESS THAN a = ",a,"\n\n");
} else if (x == a) {
  cat("The number x = ",x," is EQUAL TO a = ",a,"\n\n");
} else {
  cat("The number x = ",x," is GREATER THAN a = ",a,"\n\n");
}

x = 10;
if (x < a) {
  cat("The number x = ",x," is LESS THAN a = ",a,"\n\n");
} else if (x == a) {
  cat("The number x = ",x," is EQUAL TO a = ",a,"\n\n");
} else {
  cat("The number x = ",x," is GREATER THAN a = ",a,"\n\n");
}

x = 10000;
if (x < a) {
  cat("The number x = ",x," is LESS THAN a = ",a,"\n\n");
} else if (x == a) {
  cat("The number x = ",x," is EQUAL TO a = ",a,"\n\n");
} else {
  cat("The number x = ",x," is GREATER THAN a = ",a,"\n\n");
}

## 
x = c("Alex Mwaniki","Faith Shikuku","John Opiyo","Bilha Ann Wetende","Valine Okeyo","Augustine Wekesa","Judy Bii");
print(x);
n = length(x);
print(n);

for (variable in x){
  cat(variable,"\n\n")
}

## Set a counter 
i = 1;
for (i in 1:n){
  cat("i = ",i,"\t",x[i],"\n");
}

for (i in n:1){
  cat("i = ",i,"\t",x[i],"\n");
}
## Implement the for loop using seq_along()
## Implement the SQUARE-ROOT CALCULATOR using the WHILE LOOP [myrootW]
## Write a calculator that computes the fourth route of a number
## 

