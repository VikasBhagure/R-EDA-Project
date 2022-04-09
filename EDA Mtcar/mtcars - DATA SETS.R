# if we enter data() we will get the built-in data sets in R
# data()

# here we are using mtcars data sets:
data(mtcars)
print(View(mtcars))

# to find head and tail of mtcars:
print(head(mtcars))
print(tail(mtcars))

print(head(mtcars,3))
print(tail(mtcars,3))

# "?" helps us to print the information of mtcars:
print(?mtcars)

# length of mtcars:
length(mtcars)
dim(mtcars)

# number of rows and columns in mtcars:
nrow(mtcars)
ncol(mtcars)

#row and column names of mtcars:
rownames(mtcars)
colnames(mtcars)

# to find the mean value of row and columns in mtcars:
rowMeans(mtcars)
colMeans(mtcars)

# to find the particular columns we need to use "$"
# dataset_name$col_name
mtcars$cyl
mtcars$mpg

# to sort particular column:
# sort(dataset_name$col_name)
sort(mtcars$mpg)
sort(mtcars$cyl)

# to describe the mtcars:
summary(mtcars)

# to find the max value from the particular column in mtcars:
# max(datset_name$col_name)
max(mtcars$mpg)
max(mtcars$cyl)

# to find the min value from the particular column in mtcars:
# min(datset_name$col_name)
min(mtcars$mpg)
min(mtcars$cyl)

# which is used to print the max and min value of the particular rows in mtcars:
# which.max(datset_name$col_name)
# which.min(datset_name$col_name)
which.max(mtcars$mpg)
which.max(mtcars$cyl)

which.min(mtcars$mpg)
which.min(mtcars$cyl)

# which is used to print the max and min value of the particular rows in mtcars by using row names:
# rownames(dataset_name)[which.max(dataset_name$col_name)]
rownames(mtcars)[which.max(mtcars$cyl)]

# mean and median value of mtcars by column names:
mean(mtcars$cyl)
median(mtcars$cyl)

# quantile,variance,standard deviation values of mtcars by column names:
#quantile(mtcars)
quantile(mtcars$mpg)
quantile(mtcars$mpg,0.50)
var(mtcars$mpg)
sd(mtcars$mpg)

# mean of 20% in mtcars for particular column name:
# mean(dataset_name$col_name,trim=0.20)
mean(mtcars$mpg,trim=0.20)
mean(mtcars$mpg)

# distance avg data point in R is median average distance(mad)
# mad(dataset_name$col_name)
mad(mtcars$mpg)

# Range = difference between max and min
range= max(mtcars$mpg) - min(mtcars$mpg)
print(range)

# Inter-quartile range =  means median value which means 50% of the data
# IQR(dataset_name$col_name)
IQR(mtcars$mpg)

# Co-relation:
#Negative correlation means not correlated with each other
cor(mtcars$mpg,mtcars$cyl)



scale(mtcars$mpg)
rank(mtcars$mpg)
rank(-mtcars$mpg)
rank(mtcars$mpg,ties.method="average")
rank(mtcars$mpg,ties.method="max")

t.test(mtcars$mpg,mtcars$cyl)
table(mtcars$mpg,mtcars$cyl)


