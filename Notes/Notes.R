#Stat 223 R

#source("C:/Users/jon/Documents/R/Practice/prac.R",echo=TRUE)
##########R Basics and finding help##########
print('hello')
mean(1:20)
x <- 1:20
print(x)
help(print)
?print
help.search("pri")
??pri
example(rnorm)
demo()
demo(graphics)#feature specific
vingnette()
install.packages("someLib") #Install someLib package
library(someLib)#Load the package

########R Variables and operators ########
myEnv <- new.env()#Creates a new env
myEnv[["x"]] <- 10 #Store a var inside the new env
myEnv$x <- 10 # Does the same thing
myEnv[["x"]]
myEnv$x #get the var
10 ^ 5 #In sci notation
10 ** 5 #Same thing
format(10 ^ 5, scientific=FALSE) #Without sci notation
10 %% 3 #Modulus
10 %/% 3 #Integer Division
abs(-5)

log(2)
log(2,base = 10)
exp(5)
factorial(5)
pi #Special const
options() #get global options. For example Pi is set to a certain amount of digits
options(digits=10) # sets digit to 10 places
#Special numbers: Inf, -Inf, NaN, na
is.nan(x/y) #Check if this is not a number is.finite(1/0) is.na(x) Check if not avaliable or no data

########R Data Structures ########

str(student.names)#print the data strcuture info
is.numeric(student.names)
is.character(student.names)

#source("C:/Users/jon/Documents/R/Practice/prac.R",echo=TRUE)
print('hello')
mean(1:20)
x <- 1:20
print(x)
help(print)
?print
help.search("pri")
??pri
example(rnorm)
demo()
demo(graphics)#feature specific
vingnette()
install.packages("someLib") #Install someLib package
library(someLib)#Load the package

myEnv <- new.env()#Creates a new env
myEnv[["x"]] <- 10 #Store a var inside the new env
myEnv$x <- 10 # Does the same thing
myEnv[["x"]]
myEnv$x #get the var
10 ^ 5 #In sci notation
10 ** 5 #Same thing
format(10 ^ 5, scientific=FALSE) #Without sci notation
10 %% 3 #Modulus
10 %/% 3 #Integer Division
abs(-5)
log(2)
log(2,base = 10)
exp(5)
factorial(5)
pi #Special const
options() #get global options. For example Pi is set to a certain amount of digits
options(digits=10) # sets digit to 10 places
#Special numbers: Inf, -Inf, NaN, na
is.nan(x/y) #Check if this is not a number is.finite(1/0) is.na(x) Check if not avaliable or no data

str(student.names)#print the data strcuture info
is.numeric(student.names)
is.character(student.names)

print("he",echo=TRUE)

data()
data(women)
women <- head(women)
h <-(women$height)
h
mean(h)
ls() #Shows all created variables in the workspace
rm() #Removes variables from the workspace


#Useful packages: 


#source("C:/Users/jon/Documents/R/Practice/prac.R",echo=TRUE)
print('hello')
mean(1:20)
x <- 1:20
print(x)
help(print)
?print
help.search("pri")
??pri
example(rnorm)
demo()
demo(graphics)#feature specific
vingnette()

####Libraries#####
install.packages("someLib") #Install someLib package
library(someLib)#Load the package
library()#Show all libs installed
#Or:
package <- installed.packages()
view(packages)
#You can also install packages from github


myEnv <- new.env()#Creates a new env
myEnv[["x"]] <- 10 #Store a var inside the new env
myEnv$x <- 10 # Does the same thing
myEnv[["x"]]
myEnv$x #get the var

###Math####
10 ^ 5 #In sci notation
10 ** 5 #Same thing
format(10 ^ 5, scientific=FALSE) #Without sci notation
10 %% 3 #Modulus
10 %/% 3 #Integer Division
abs(-5)
log(2)
log(2,base = 10)
exp(5)
factorial(5)
pi #Special const
options() #get global options. For example Pi is set to a certain amount of digits
options(digits=10) # sets digit to 10 places
#Special numbers: Inf, -Inf, NaN, na
is.nan(x/y) #Check if this is not a number is.finite(1/0) is.na(x) Check if not avaliable or no data

####Data Structure Check#####
str(student.names)#print the data strcuture info
is.numeric(student.names)
is.character(student.names)

print("he",echo=TRUE)

data()
data(women)
women <- head(women)
h <-(women$height)
h
mean(h)
ls() #Shows all created variables in the workspace
rm() #Removes variables from the workspace

####Data Frame####
name <- c("ann","bob")
age <- c(1,2)
child <- c(T,F)

df <- data.frame(name,age, child)
df#prints the data frame
names(df) <- c("Name", "Age", "Child")#Change col names
# or you can do it this way df <- data.frame(Name=name,...)

#Data access
student[1]#This is a dataframe
student[1,]#This is a list
student[3,"age"]#This is a vector
students[1:3,1:2]
students[c(1,2),c(1,3)]
students[,1]
students[1,]
students[student.genders=="Male",]
#Adding a col
height <- c(...)
people$height <- height
#OR
cbind(people,height)
#add a row
tom <- data.frame(name="Tom", age=37,...)
rbind(people,tom)
#Sorting
sort(people$age)#Has limitations later on
ranks <- order(people$age)#returns the rank position of each element ex: 3 1 2
#With ranks you can preform selections on indexes in a scrambeled oder such as the result in a data frame
people[order(people$age, descending=TRUE),]
#Getting info on the dataset
dim()
ncol()
nrow()
head()
tail()


####Vectors####
name <- c(1,2,3,4,5,667,32,4)
name[1]#get index 1
name[1:3]#Get index 1 through 3
name[c(T,F,F,T,T,F)]#Get the only thoes that are true

####Coersions####
#Implicit
c(1,2,"3")#Is automatically converted to chars
#Explicit
as.character(student)#Convert type into char


####Factor####
#Stores nominal or categorical data like gender
factor(C(...))#Converts vector into a factor
#Levels are converted into intergers. Saves memeory when long chars.
#To explicitly create levels:
levels(blood_factor) <- c("BT_A", "BT_AB", "BT_B", "BT_O")#This sets the levels to be specific. Like names()
#OR:
factor(blood, labels = c("BT_A", "BT_AB", "BT_B", "BT_O")) 
#Set order
tshirt_factor <- factor(tshirt, ordered = TRUE,
                        levels = c("S", "M", "L"))

####List####
typeof(student[1])#This is a list
typeof(student[[1]])#This returns the type of the element at 1
length(student)#Get length of list
#Put something in a nested list
song$similar$reason <- "too long"

####Reading in data#####
read.table(file, header=TRUE, sep=",", stringsAsFactors=TRUE)
theDF <-data.frame(First=x, Second=y, Sport=q, stringsAsFactors=FALSE)
library(readr)
theUrl <- "http://www.jaredlander.com/data/TomatoFirst.csv"
tomato2 <-read_delim(file=theUrl, delim=',')
#Excel Files
download.file(url='http://www.jaredlander.com/data/ExcelExample.xlsx',
destfile='data/ExcelExample.xlsx', method='curl')
library(readxl)
excel_sheets('data/ExcelExample.xlsx')
tomatoXL <-read_excel('data/ExcelExample.xlsx')
tomatoXL

####Dates####
tuna <- as.Date("2019-06-28")

####Graphics in R####
#Base Graphics - less advanced and less used
library(ggplot2)
data(diamonds)
head(diamonds)
hist(diamonds$carat, main="Carat Histogram", xlab="Carat")
plot(price ~ carat, data=diamonds)#Scatterplot y ~ x
boxplot(diamonds$carat)
plot(countries$areas, countries$pop)#Scatter plot
hist(africa$pop, breaks=10)#Breaks sets the number of bins
plot(mercury$temperature, mercury$pressure,
     xlab = "Temperature",
     ylab = "Pressure",
     main = "T vs P for Mercury",
     type = "o",
     col = "orange",
     col.main = "darkgray",
     cex.axis = 0.6,
     lty = 5,
     pch = 4)
#type is the plot type. l is a line.
#cex.axis ratio for axis to be multiplied by. Changes the size of the labels. 
#lty is the line type. 
#pch is the plot symbol

#par()
par(col = "blue")#Sets this a variable. Also par() lists all the graphical params. 
par(mfrow = c(2,2))#builds a plot in a 2 x 2 gride. You can now plot 4 different plots in a 2 x 2 gride. 
par(mfcol = c(2,2))#Just adds the plots in a col wise order. 
#This displays the first plot wide acress the entire first row with the other plots at the bottom. 
grid <- matrix(c(1, 1, 2, 3), nrow = 2,
               ncol = 2, byrow = TRUE)
grid
[,1] [,2]
[1,] 1 1
[2,] 2 3
layout(grid)
plot(shop$ads, shop$sales)
plot(shop$comp, shop$sales)
plot(shop$inv, shop$sales)
layout(1)# Resets everything. An easy way to reset is to store your old stuff in a var. old_par <- par() then call par(old_par)
#Stacking Graphical elements
plot(shop$ads, shop$sales,
     pch = 16, col = 2,
     xlab = "advertisement",
     ylab = "net sales")
lm_sales <- lm(shop$sales ~ shop$ads)#lm() returns an lm object which contains the coefficients of the line representing the linear fit. 
abline(coef(lm_sales), lwd = 2)
lines(shop$ads, shop$sales)#This is bad!!!
#this is better. 
ranks <- order(shop$ads)
plot(shop$ads, shop$sales,
       pch = 16, col = 2,
       xlab = "advertisement",
       ylab = "net sales")

#Creaating a legend
legend(x=3.5, y14, legend=c("None", "Smoke"), fill=c(4,2), pch=c(16,17), bty="n")#Fill is the color. legend are the titles. bty is box type. "n" means no
#box
#Adds a trend line
lines(smooth.spline(shop$sales,shop$ads), col=4)
#ggplot
ggplot(data=diamonds) + geom_histogram(aes(x=carat))#rectangles of discrete measurment. Data counts in buckets
ggplot(data=diamonds) + geom_density(aes(x=carat), fill="grey50")#Contiuous lines. Desnity plots show the prob of obs falling within a sliding window
#along the variable of interest. 
ggplot(diamonds, aes(x=carat, y=price)) + geom_point()#Scatterplot
# save basics of ggplot object to a variable
g <-ggplot(diamonds,aes(x=carat, y=price))
# g + geom_point()
g + geom_point(aes(color=color))# Adds color to graph
#Faceeted plots or multiple plots of different colors and vars
g + geom_point(aes(color=color)) + facet_wrap(~color)
g + geom_point(aes(color=color)) + facet_grid(cut~clarity)
#Facets with histograms
ggplot(diamonds, aes(x=carat)) + geom_histogram() + facet_wrap(~color)
#Boxplot
ggplot(diamonds,aes(y=carat, x=1)) + geom_boxplot()
#Multiple Boxplots
ggplot(diamonds, aes(y=carat, x=cut)) + geom_boxplot()
#More contious boxlot
ggplot(diamonds, aes(y=carat, x=cut)) + geom_violin()
#Line Graphs
ggplot(economics, aes(x=date, y=pop)) + geom_line()
#Themes
library(ggthemes)
# build a plot and store it in g2
g2 <- ggplot(diamonds, aes(x=carat, y=price)) + geom_point(aes(color=color))
# apply a few themes
g2 + theme_economist() + scale_colour_economist()
g2 + theme_excel() + scale_colour_excel()
g2 + theme_tufte()
g2 + theme_wsj()



######################Functions#######################
> # two substitutions
  > sprintf("Hello %s, today is %s", "Jared", "Sunday")

[1] "Hello Jared, today is Sunday"

#do.call 
#This allows us to specify the name of a function either as a character or as an object, and provide arguments as a list.

> do.call("hello.person", args=list(first="Jared", last="Lander"))

[1] "Hello Jared Lander"

> do.call(hello.person, args=list(first="Jared", last="Lander"))

[1] "Hello Jared Lander"

#Controls
if(toCheck == 1)
{
     print("hello")
}

> check.bool <- function(x)
  + {
    +     if(x == 1)
      +     {
        +         # if the input is equal to 1, print hello
          +         print("hello")
        +     }else if(x == 0)
          +     {
            +         # if the input is equal to 0, print goodbye
              +         print("goodbye")
            +     }else
              +     {
                +         # otherwise print confused
                  +         print("confused")
                +     }
    + }

#Switch
> use.switch  <- function(x)
  + {
    +     switch(x,
                 +         "a"="first",
                 +         "b"="second",
                 +         "z"="last",
                 +         "c"="third",
                 +         "other")
    + }

#ifelse
> # see if 1 == 1
  > ifelse(1 == 1, "Yes", "No")

[1] "Yes"

> # see if 1 == 0
  > ifelse(1 == 0, "Yes", "No")

[1] "No"
#Check an entire list of values if true or false
> toTest <- c(1, 1, 0, 1, 0, 1)
> ifelse(toTest == 1, "Yes", "No")

[1] "Yes" "Yes" "No" "Yes" "No" "Yes

> ifelse(toTest == 1, toTest*3, toTest)

[1] 3 3 0 3 0 3

#Compound Testing

> a  <- c(1, 1, 0, 1)
> b  <- c(2, 1, 0, 1)
>
> # this checks each element of a and each element of b
> ifelse(a == 1 & b == 1, "Yes", "No")

[1] "No"  "Yes" "No"  "Yes"

>  # this only checks the first element of a and the first element of b
>  # it only returns one result
> ifelse(a == 1 && b == 1, "Yes", "No")

[1] "No"

#Loops


###############dplyr###############
a grammer of data manipulation

hflights <- tbl-df(h)
Verbs: 
select (vars)
filter (obs)
arrange (obs)
mutate (vars)
summarize (groups)
 tidyr - tidy data

Select:
Ex: select(df, Group, Sum) Group and Sum are cols

mutate: creaetes a new var with data that already exsists in the data set
Ex: mutate(h1, loss = ArrDelay - DepDelay) h1 is a tbl

Filter:
Ex:
filter(hftbl, Cancelled ==1)

arrage:
Ex: arrange(hflights, DepDelay) first the tbl then the col name you want to arrange by (like order by in SQL)
arrange(hflights, DepDelay, ArrDelay)

Summarize: 
Ex: summarise(df, sum = sum(A), avg = mean(B), var = var(B))

Chaining your functions with pip operator: This is really good to save memory 
summarize(
  mutate(
    filter(
      select(a, X, Y, Z),
    X > Y),
  Q = X + Y + Z),
all = sum(Q))
) 
OR!!!!
use %>% the magrittr
object %>% function(objectPassedIn, arg2, arge3, ...)
Ex: 
c(1,2,3) %>% sum()
a %>%
  select(a, X, Y, Z) %>%
  filter(X>Y) %>%
  mutate(...) %>%
  summarize(all = sum(Q))



