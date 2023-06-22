library(readr)
DATA <- read_csv("C:/Users/user/Downloads/DATA.csv")
View(DATA)# import data

str(DATA)  # data structure.It consists of 316 obsevations/rows and 5 variables/columns as described below.

# spc_tbl_ [316 × 5] (S3: spec_tbl_df/tbl_df/tbl/data.frame)
# $ HousePrice   : num [1:316] 138800 155000 152000 160000 226000 ...
# $ StoreArea    : num [1:316] 29.9 44 46.2 46.2 48.7 56.4 47.1 56.7 84 49.2 ...
# $ BasementArea : num [1:316] 75 504 493 510 445 ...
# $ LawnArea     : num [1:316] 11.22 9.69 10.19 6.82 10.92 ...
# $ HouseNetWorth: chr [1:316] "Low" "Medium" "Medium" "Medium" ...
# - attr(*, "spec")=
#   .. cols(
#     ..   HousePrice = col_double(),
#     ..   StoreArea = col_double(),
#     ..   BasementArea = col_double(),
#     ..   LawnArea = col_double(),
#     ..   HouseNetWorth = col_character()
#     .. )
# - attr(*, "problems")=<externalptr> 

DATA$StoreArea # Extract StoreArea variable from the DATA

f1<-DATA$StoreArea
mean(f1)
summary(f1)# This gives an output of the minimum, 1st quartile, median, mean, 3rd quartile and maximum values in the StoreArea variable.

DATA[1,4]# Extract the value that is in the first row on the fourth column.

DATA[1:10,1:4]# Extract the values that are in the first 10 rows on the first 4 columns

DATA[c(5,12,30),c(1,3,5)]# Extract the values that are in the 5th, 12th and 30th row and on the 1st, 3rd and 5th column

DATA[8,]# Extract values in the 8th row in all columns

DATA[1:8,]# Extract values in the first 8 rows in all columns

x <- DATA[,1:3]# Extract all rows in the first 3 columns
print(x,n=316)

DATA[-(1:300), -c(1,3)]# Extract all rows except the first 300 rows in all columns except the 1st and 3rd columns

DATA[DATA$StoreArea > 50,] # Extract values in the StoreArea variable that are greater than 50
print(x,n=119)

DATA$StoreArea > 50 # Indicate True if values greater than 50 and False if not within the StoreArea variable

DATA[DATA$HouseNetWorth== "High",]# Extract all values in the HouseNetWorth column that have a string value "High"

DATA[DATA$HouseNetWorth!="Medium",]# Extract all values in the  HouseNetWorth column that have string values not equal to "Medium"

DATA[DATA$StoreArea>=50 & DATA$HouseNetWorth=="Medium" & DATA$LawnArea<=50,]

DATA[DATA$StoreArea>50| DATA$StoreArea<20,]# Extract values in the StoreArea variable that are greater than 50 or less than 20
