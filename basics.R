#######################################
#              BASICS
######################################

# Run a line of code --- Ctrl+Enter in windows, Command+Return in Mac
# Run the entire code --- Ctrl+Shift+Enter in windows, Command+Shift+Return in Mac
# to comment/uncomment Ctrl+Shift+c (windows), Command+Shift+c (Mac)

print("hello world")
a<-2 # a gets value 2
s<-"hello world"
b=3

# expresions
tot<-a+b
c<-a^b
e<-d<-log(1)
d
exp(4)
d=(10/4)^2

# logical operators
x<-2
x==2
x!=2
x<=2
a1<- x==2
y<-3
a2<- (a1 & (y>2))
a2
a3<- (a1 | (y>4))
a3

help.start()
?setwd
########################################################

getwd() # gets the working director
setwd("C:/Users/sdt144/Dropbox/SamR/CMDA3654") # set the working directory
setwd("C:\\Users\\sdt144\\Dropbox\\SamR\\CMDA3654") # set the working directory
ls() # list all the variables

rm(a) # removes variable
#rm(list = ls()) # remove all variables
cat("\014")  # clear console  or  Ctrl+L
################################################
a<-1
s<-"hello world"
typeof(s) # shows type of data (e.g. char, numeric, logical, inetger, complex)
class(a) # shows type of the variable
is.numeric(s) # determines if neumeric, output logical
int1<-3L
typeof(int1)
#to change data type use as.numeric(), as.character(), as.logical()
nchar(s) # counts number of characters in the character variable
################################################
# Data structure: vector, matrix, Array, Data Frame, List

##### Vector #####
# vectors with no pattern
a <- c(1,2,5.3,6,-2,4) # numeric vector
b <- c("one","two","three") # character vector
c <- c(TRUE,TRUE,TRUE,FALSE,TRUE,FALSE) #logical vector
is.vector(a)
length(a)

# sequences
vec1<-1:10
vec1
vec2=1:-10
vec2
vec3=seq(0,5,by=.5)
vec3

# repeating
rep1=rep(1,5) # repeates 1 five times
rep1
rep2=rep("a",5)
rep2
rep3=rep(c(1,2,3),5)
rep3
rep4=rep(c("a","b"),c(5,2)) 
rep4

#arithmetics with vectors
x<-c(1,2,3,4,5)
y<-c(2,-1,7,0,1)
sum.1<-x+1      #object's name can contain letter, number, dot, or underscore
sum.1
x^2
2^x
x*y   # elementwise product
x%*%y # dot product
x<3
x==3

#subseting
w<-11:20
w
w[3]
w[3:5]
w[c(2,4,7)] # 2nd and 4th element of the vector a


##### Matrix #####
Y<-matrix(1:20, nrow=5,ncol=4)
Y
Y<-matrix(1:20, nrow=5,ncol=4, byrow=TRUE)
Y
Y[,4] # 4th column of matrix
Y[3,] # 3rd row of matrix 
Y[2:4,1:3] # rows 2,3,4 of columns 1,2,3
X<-t(Y)     # Transpose
X
dim(Y); 
dim(X);
Z1<-Y*Y     # Elementwise multiplication 
Z1
Z2<-Y%*%X   # Matrix multiplication
Z2

#functions with vectors and matrices
c1=c(1,1,1)
c2<-c(2,2,2)
c3<-c(3,3,3)
mat1<-cbind(c1,c2,c3) #binds vectors by column
mat1
mat2<-rbind(c1,c2,c3) #bind vectors by row
mat2
I4=diag(4) #builds identity matrix
I4
mat3<-matrix(1:10,2,5)
mat4<-mat3%*%t(mat3)
mat4inv<-solve(mat4) # inverse of a matrix
mat4inv

##### Data Frame #####
d <- c(1,2,3,4)
e <- c("red", "white", "red", NA)
f <- c(TRUE,TRUE,TRUE,FALSE)
myDF <- data.frame(d,e,f)
myDF
names(myDF) <- c("ID","Color","Passed") # variable names
myDF
myDF[2:3]
myDF[c("ID","Color")]
myDF$ID
myDF[2,]
nrow(myDF);
ncol(myDF); 
dim(myDF);
head(myDF,3) #head(datafarme,n) samples the first n records of the data frame
tail(myDF,2) #tail(datafarme,n) samples the last n records of the data frame
##################################################
rm(list = ls()) # remove all variables

# Reading Data, output a data frame
getwd()
setwd("C:/Users/sdt144/Dropbox/SamR/DataFiles")
list.files() # shows a list of files in the current path

### Import Data
mydatacsv<- read.table('prices.csv', sep=',', header=T) #default delimeter if space, tab
mydatacsv
mydatatxt<- read.table('prices.txt', sep='\t', header=T)
mydatatxt
mydatacsv<- read.csv('prices.csv', header=T) #read.csv() is similar to read.table. 
#It is just that the default separator is comma.
mydatacsv
dataFromPrincton <- read.table("http://data.princeton.edu/wws509/datasets/effort.dat")
dataFromPrincton


names(mydatacsv) #reads the header names
head(mydatacsv,5) #reads the 5 top records
tail(mydatacsv,3) #reads the last three records
tail(dataFromPrincton,2)
dim(mydatacsv)
mydatacsv[2,3]
mydatacsv[,1]
mydatacsv$NE
mydatacsv[mydatacsv$NE == 1,]

SQFT
attach(mydatacsv) # attach a DF for fewer key strokes
SQFT
detach(mydatacsv)  # don't forget to detach

### Exporting data
write.csv(mydatacsv,file="mydatacsv2.csv") 
write.table(mydatacsv,file="mydatacsv3.txt", sep="\t")
#######################################################
summary(mydatacsv)
attach(mydatacsv)
summary(PRICE)
plot(SQFT,PRICE) # Visualization
plot(AGE,PRICE)
hist(PRICE[NE==1])
hist(PRICE[NE==0])
#######################################################
library()   # see all installed packages
install.packages("ggplot2") # Install a package
require(ggplot2) # load the package and the data
library(ggplot2) # load the package and the data
########################################################
# More data structures

# Lists
# Oppose to vectors, lists can contain objects of different classes
a<-list(3,"Sam",TRUE,1+0.1i,c(1,4,7))
a

# Factors 
# Factors are used to represent categorical data.
# They better to be used with labels rather than integers.
a<-factor(c("yes","yes","no"))
a
table(a)
a<-factor(c("yes","yes","no"),levels=c("yes","no")) #makes "yes" as the base level

################################################
# NA vs. NAN
# NA means "Not Available" while NAN means undetermined
# (nan is na but revese is not true)
a<-0/0
is.nan(a)
is.na(a)
b<-NA
is.na(b)
is.nan(b)

# Getting rid of na
a<-c(1,2,NA,4,NA,5)
b<-a[!is.na(a)] #for vectopr
b

airquality<-data.frame(ozone=c(2,3,4),wind=c(2,NA,5),humid=c(NA,5,3))
airquality
good<-complete.cases(airquality) #for data frame
good # good represents rows which are complete (without NA)
airquality[good,]

############ Control Structures #################
#if-else
x<-5
if(x==3){
  y<-3
} else if((x>3) & (x<5)){
  y<-4
} else{
  y<-5
}
y

# for loop
for(i in 1:10){
  print(i)
}

# while loop
count<-0
while (count<10){
  print(count)
  count<-count+1
}

# break    ----> exit the loop
# next     ----> go to the next iteration
# return   ----> exit a function

###########################################
# Functions
addFunc<-function(a,b){
  a+b # function returns the last argument 
}
addFunc(2,3)

addFunc<-function(a,b){ #b has default value
  return(a+b)
  a+b+2
}
addFunc(2,3)

addFunc<-function(a,b=4){ #b has default value
  a+b
}
addFunc(6)

args(addFunc) # see arguments of the function

mydata<-rnorm(10)
?sd
sd(mydata)
sd(x=mydata)
sd(x=mydata,na.rm=TRUE)
sd(na.rm=TRUE,x=mydata) #in this way, order does not matter
#################################################################