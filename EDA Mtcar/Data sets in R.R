data() # To know about the data sets available
# we get this in seprate file
data(mtcars) # to get the data mtcars
# in seprate window 
View(mtcars) # to view the data 
head(mtcars)# to view the top  by default 6
tail(mtcars)# to view the bottom, by default 6 
head(mtcars,3) # to view specified data rows
?mtcars # to know the details of mtcars
length(mtcars) # basically number of columns
dim(mtcars)# dimensions
nrow(mtcars)# no of rows 
ncol(mtcars)# no of columns
rownames(mtcars)# row names 
colnames(mtcars)# column names 
rowMeans(mtcars) # row mean
colMeans(mtcars) # column mean
mtcars$cyl # values of column cyl
mtcars$mpg
sort(mtcars$mpg)
sort(mtcars)# this is an error
#  A whole data cannot be sorted atonce always select particular column for sort
summary(mtcars) #3 statisics of data
max(mtcars$cyl)
min(mtcars$cyl)
mean(mtcars$cyl)
which.max(mtcars$cyl) # to check which particular row is the max 
which.min(mtcars$cyl)
rownames(mtcars)[which.max(mtcars$cyl)]
median(mtcars$cyl)
quantile(mtcars$cyl) # to know all quatiles
quantile(mtcars$cyl,0.25)# to know a particular quatile
var(mtcars$mpg)# to get variance
sd(mtcars$mpg)# to get deviation 
mean(mtcars$mpg,trim=0.20) # to get the mean of specified percent of datato exclude
mad(mtcars$mpg) # median absolute deviation

