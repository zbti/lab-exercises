## Part 1: Debugging

my.num <- 6
initials <- "?. ?."

my.vector <- c(my.num, initials)

# run ?sum to get more info
vector.sum <- sum(my.vector)

# Describe why this doesn't work: 
# my.vector contains a string and numerical data, different types
# cannot be summed, and sum() does not accept string type

install.packages("stringr")

my.line <- "Hey, hey, this is the library"

print(str_length(my.line))

# Describe why this doesn't work: 
# library "stringr" has not been loaded into R. library("stringr")

said.the.famous <- paste(my.line, " - ", initial)

# Describe why this doesn't work: 
# the variable "initial" is not defined, you have however defined "initials" [Syntax Error]



## Part 2 - Vector and function practice

# Make a vector and use typeof to check what type R considers it to be

num.first7 <- c(1, 2, 3, 4, 5, 6, 7)
typeof(num) #double

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(vector.one, vector.two){
  len.one = length(vector.one)
  len.two = length(vector.two)
  if(len.one > len.two){
    ans <- paste("The differnce is lenghts is",  len.one-len.two)
    return(ans)
  }else{
    ans <- paste("The differnce is lenghts is",  len.twp-len.one)
    return(ans)
  }
}

# Pass two vectors of different length to your `CompareLength` function
num.first10 <- c(1, 2, 3,4 ,5, 6, 7, 8,9,10)
diff <- CompareLength(num.first10, num.first7)

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(vector.one, vector.two){
  len.one = length(vector.one)
  len.two = length(vector.two)
  if(len.one > len.two){
    ans <- paste("Your first vector is longer by",  (len.one-len.two), "elements")
    return(ans)
  }else{
    ans <- paste("Your first vector is longer by",  (len.two-len.one), "elements")
    return(ans)
  }
}

# Pass two vectors to your `DescribeDifference` function
ddiff <- DescribeDifference(num.first7, num.first10)

# Write a function `CombineVectors` that takes in 3 vectors and combines them into one
CombineVectors <- function(vector.1, vector.2, vector.3){
  new.vector <- c(vector.1, vector.2, vector.3)
  return(new.vector)
}
# Send 3 vectors to your function to test it.
vec.1 <- c(1 , 2)
vec.2 <- c(2, 4, 6)
vec.3 <- c(10 , 100 , 1000)
all.vec <- CombineVectors(vec.1, vec.2, vec.3)
# Write a function `CapsTime` that takes in a vector of names of courses you're taking, ex "Informatics 201" and removes all capital letters
classes <- c("Informatics 201", "Informatics 330", "General Studies 391", "Earth and Space Sciences 102")
CapsTime <- function(vector.class){
  new.vector <- gsub("[A-Z]", "", vector.class)
  return(new.vector)
}
new.classes <- CapsTime(classes)
