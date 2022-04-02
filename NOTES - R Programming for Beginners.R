##Creating Variables
a = 1+4
a <- 10 ##declaring a variable
A <- 89 ##R is sensitive for capital char
a
A
A+A
a+a
A+a
##with numbers
mynumeric <- 0.2 ##always use . for decimal numbers
mynumeric <- 10
##with logical
mylogical <- TRUE
mylogicalF <- FALSE
##with character
mycharacter <- "my story" ##single quote also works for char
mycharacter1 <- 'my story' ##dont use double quotes inside of double quotes, R believes u want to break it


##Creating Factors --> Data type
myfactos <- as.factor("female") ##for statistics or her glutes


##Creating Vectors --> Various datas
vec1 <- c(1,2,3,4,5) ##numeric data are vectos of lenght 1
vec2 <- c(T, F, T, T, T) ##logic vector
vec3 <- c("1", "34", "marina", "statgen", "p") ##character vector
vec4 <- as.factor(c("female", "male", "male", "female", "male"))
vec5 <- c(1, T, "m")
vec5 ## when running, it turns to char
vec6 <- c(1, T, F)
vec6 ##when running it turns to numeric
vec7 <- c(1, 34, 35, 256, 235, 234, 134, 6789)


##Creating Lists --> you can put lists on lists, numbers, vectors...
list(vec1, vec2, vec3)
mylist <- list(vec1, vec2, vec3, 20, list(vec1, vec2, vec3), mean)


##Creating Data frames --> lists with vector with same lenght
data.frame(vec1, vec2, vec3)
data.frame(vec1, vec2)
data.frame(vec2, vec3) ##it is possible to name columns doing data.frame(a=vec1)
data.frame(a=vec1, b=vec2)
data.frame(dogs=c("Dom", "Dim", "Tyler"), ages=c(2, 1, 0.75)) ##u can crate the vectors inside the data frame
df <- data.frame(vec1, vec2, vec3) ##saving data frames
dfdogs <- data.frame(dogs=c("Dom", "Dim", "Tyler"), ages=c(2, 1, 0.75))
View(dfdogs) ##show data frame


##Creating a MATRIX
matrix(vec7, 4,2) ##matrices are created indicating a vector, the number of lines and after the numbers of columns, those need to be multiples of the vector size
mymatrix <- matrix(vec7, 4,2) #the view shows that R saves the matrix following the order of the vector, by first column till reaches the number of lines, then passes for the second column


##Indexing 
##--> R starts indexing in 1, != from C, that starts at 0, all vectors can be indexed
vec2[1]
vec2
1:6 ##creat vector from 1 to 6
vec2[-2] ##every element besides the second one
vec2[1:5] ##shows all of the elements till 5
vec3[c(F, F, F, T, F)] ##shows only the true one
##indexing lists use [[]], you can give names for it
mylist
mylist[[3]] ##double braquets
mylist2 <- list("vector one" = vec1, 
                "vector two" = vec2, vec3, 20, list(vec1, vec2, vec3), mean)
mylist2 ##list with names
names(mylist2)
##mylist2$... :use it to filter the lists in the console

##indexing data frames 
dfdogs
df$vec1
dfdogs$ages
df[[1]]
dfdogs[[1]] ##asking for columns
dfdogs[[2]][3] ##asking for a specifc position inside the column
dfdogs [[1]][1:2]
dfdogs [[1,2]] ##first row second columns
dfdogs [1,] ##first row
dfdogs [c(1,3),] ##creating a vector to acess 2 or more rows

##indexing matrices
mymatrix ##use what come from when you call the matrix to the console
mymatrix[,2]


##FUNCTIONS
newSum <- function(value1, value2) {
  results<- value1+value2
  return(results)
}
newSum(10,20)

newDiv <- function(value1, value2) {
  results<- value1/value2
  return(results)
}
newDiv(10,20) ##all arguments must me separated by commas
newDiv(value2 = 10, value1 = 20)
newDiv

##PACKAGES --> CAN BE SUBMITED TO CRAN, server that keeps all the packages available to any user

install.packages("ggplot2")
library(ggplot2)
ggplot(dfdogs, aes(dogs, ages)) + geom_point()
?ggplot
  
