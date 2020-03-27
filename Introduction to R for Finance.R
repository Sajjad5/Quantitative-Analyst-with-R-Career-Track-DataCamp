## Your first R Script

# Addition!
3 + 5

# Subtraction!
5 - 3
# Addition 
2 + 2

# Arithmetic in R
# Subtraction
4 - 1

# Multiplication
3 * 4

# Division
4 / 2

# Exponentiation
2^4

# Modulo
7 %% 3

# Assignment and Variables 
# Assign 200 to savings
savings <- 200

# Print the value of savings to the console
savings
# Assign 100 to my_money
my_money <- 100

# Assign 200 to dans_money
dans_money <- 200

# Add my_money and dans_money
our_money <- my_money + dans_money

# Add my_money and dans_money again, save the result to our_money
our_money
########################################################
#Financial Returns 

# Variables for starting_cash and 5% return during January
starting_cash <- 200
jan_ret <- 5
jan_mult <- 1 + (jan_ret / 100)

# How much money do you have at the end of January?
post_jan_cash <- 200 * 1.05

# Print post_jan_cash
post_jan_cash

# January 10% return multiplier

jan_ret_10 <- 10
jan_mult_10 <- 1 + (jan_ret_10/100)

# How much money do you have at the end of January now?
post_jan_cash_10 <- 200 * 1.10

# Print post_jan_cash_10
post_jan_cash_10

# Starting cash and returns 
starting_cash <- 200
jan_ret <- 4
feb_ret <- 5


# Multipliers
jan_mult <- 1 + (jan_ret / 100)
feb_mult <- 1 + (feb_ret / 100)

# Total cash at the end of the two months
total_cash <- 200 * jan_mult * feb_mult
total_cash
# Print total_cash
total_cash
#####################################
#Data Type Exploration
# Apple's stock price is a numeric
apple_stock <- 150.45

# Bond credit ratings are characters
credit_rating <- "AAA"

# You like the stock market. TRUE or FALSE?
my_answer <- TRUE 

# Print my_answer
my_answer
#####################################
#c()ombine ..vector
# Another numeric vector
ibm_stock <- c(159.82, 160.02, 159.84)

# Another character vector
finance <- c("stocks", "bonds", "investments")

# A logical vector
logic <- c(TRUE, FALSE, TRUE)
###################################
#Vector names 
# Vectors of 12 months of returns, and month names
ret <- c(5, 2, 3, 7, 8, 3, 5, 9, 1, 4, 6, 3)
months <- c("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec")

# Add names to ret
names(ret) <- c("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec")

# Print out ret to see the new names!
names(ret) <- months
ret
####################################
#Visualize your vector
# Look at the data
apple_stock

# Plot the data points
plot(apple_stock)

# Plot the data as a line graph
plot(apple_stock, type = "l")
####################################
#Weighted average
# Weights and returns
micr_ret <- 7
sony_ret <- 9
micr_weight <- .2
sony_weight <- .8

# Portfolio return
portf_ret <- micr_ret * micr_weight + sony_ret * sony_weight
####################################
# Weights, returns, and company names
ret <- c(7, 9)
weight <- c(.2, .8)
companies <- c("Microsoft", "Sony")

# Assign company names to your vectors
names(ret) <- companies
names(weight) <- companies

# Multiply the returns and weights together 
ret_X_weight <- ret * weight 

# Print ret_X_weight
print(ret_X_weight)


# Sum to get the total portfolio return
portf_ret <- sum(ret_X_weight)

# Print portf_ret
portf_ret

# Print ret
ret

# Assign 1/3 to weight
weight <- 1/3

# Create ret_X_weight
ret_X_weight <- ret * weight
ret_X_weight
# Calculate your portfolio return
portf_ret <- sum(ret_X_weight)
portf_ret
# Vector of length 3 * Vector of length 2?
ret * c(.2, .6)
##############################
#Vector Subsetting
# First 6 months of returns
ret[1:6]

# Just March and May
ret[c("Mar","May")]

# Omit the first month of returns
ret[-1]
###########################
#Create a Matrix
# A vector of 9 numbers
my_vector <- c(1, 2, 3, 4, 5, 6, 7, 8, 9)

# 3x3 matrix
my_matrix <- matrix(data = c(1, 2, 3, 4, 5, 6, 7, 8, 9), nrow = 3, ncol = 3)
# Print my_matrix
my_matrix

# Filling across using byrow = TRUE
matrix(data = c(2, 3, 4, 5), nrow = 2, ncol = 2, byrow = TRUE)
#############################
#Matrix bind vectors
# cbind the vectors together
cbind_stocks <- cbind(apple, ibm, micr)

# Print cbind_stocks
cbind_stocks

# rbind the vectors together
rbind_stocks <- rbind(apple, ibm, micr)

# Print rbind_stocks
rbind_stocks
#############################
#Visualize your matrix
# View the data
print(apple_micr_matrix)

# Scatter plot of Microsoft vs Apple
plot(apple_micr_matrix)
##############################
#Correlation
# Correlation of Apple and IBM
cor(apple, ibm)

# stock matrix
stocks <- cbind(apple, micr, ibm)
################################
#Matrix subsetting
# Third row
stocks[3,]

# Fourth and fifth row of the ibm column
stocks[c(4,5), "ibm"]
###############################
#Create your first data.frame
## Variables
company <- c("A", "A", "A", "B", "B", "B", "B")
cash_flow <- c(1000, 4000, 550, 1500, 1100, 750, 6000)
year <- c(1, 3, 4, 1, 2, 4, 5)

# Data frame
cash <- data.frame(company, cash_flow, year)

# Print cash
cash
###########################
#Making head()s and tail()s of your data with some str()ucture
# Call head() for the first 4 rows
head(cash, n = 4)

# Call tail() for the last 3 rows
tail(cash, n = 3)

# Call str()
str(cash)
#######################
#Naming your columns / rows
# Fix your column names
colnames(cash) <- c("company", "cash_flow", "year") 

# Print out the column names of cash
colnames(cash)
#######################
#Accessing and subsetting data frames (1)
# Third row, second column
cash[3, 2]


# Fifth row of the "year" column
cash[5,"year"]

# Select the year column
cash$year

# Select the cash_flow column and multiply by 2
cash$cash_flow*2

# Rows about company B
subset(cash, company == "B")

# Rows with cash flows due in 1 year
subset(cash, year == 1)
#########################################
#Adding new columns
# Quarter cash flow scenario
cash$quarter_cash <-cash$cash_flow * .25
cash$quarter_cash

# Double year scenario
cash$double_year <- cash$year * 2
cash$double_year
################################
#Present value of projected cash flows (1)
# Present value of $4000, in 3 years, at 5%
present_value_4k <- 4000 * (1.05) ^ -3

# Present value of all cash flows
cash$present_value <- cash$cash_flow * (1.05) ^ -cash$year

# Print out cash
cash

# Total present value of cash
total_pv <- sum(cash$present_value)
total_pv
# Company B information
cash_B <- subset(cash, company == "B")
cash_B
# Total present value of cash_B
total_pv_B <- sum(cash_B$present_value)
##########################################3333
#Create a factor

# credit_rating character vector
credit_rating <- c("BB", "AAA", "AA", "CCC", "AA", "AAA", "B", "BB")

# Create a factor from credit_rating
credit_factor <- factor(credit_rating)

# Print out your new factor
credit_factor

# Call str() on credit_rating
str(credit_rating)

# Call str() on credit_factor
str(credit_factor)
############################################
#Factor Levels

# Identify unique levels
levels(credit_factor) 

# Rename the levels of credit_factor
levels(credit_factor) <- c("2A", "3A", "1B", "2B", "3C")

# Print credit_factor
credit_factor
#############################
#Factor summary

# Summarize the character vector, credit_rating
summary(credit_rating)

# Summarize the factor, credit_factor
summary(credit_factor)

#############################
#Visualize your factor
# Visualize your factor!
plot(credit_factor)
##############################
#Bucketing a numeric variable into a factor
head(AAA_rank)
# Create 4 buckets for AAA_rank using cut()
AAA_factor <- cut(x = AAA_rank, breaks = c(0, 25, 50, 75, 100))

# Rename the levels 
levels(AAA_factor) <- c("low", "medium", "high", "very_high")

# Print AAA_factor
print(AAA_factor)

# Plot AAA_factor
plot(AAA_factor)

##################################
#Create an ordered factor
# Use unique() to find unique words
unique(credit_rating)

# Create an ordered factor
credit_factor_ordered <- factor(credit_rating, ordered = TRUE, levels = c("AAA", "AA", "BB", "B", "CCC"))

# Plot credit_factor_ordered
plot(credit_factor_ordered)
########################################3
#Subsetting a factor
# Remove the A bonds at positions 3 and 7. Don't drop the A level.
keep_level <- credit_factor[-c(3,7)]

# Plot keep_level
plot(keep_level)

# Remove the A bonds at positions 3 and 7. Drop the A level.
drop_level <- credit_factor[-c(3,7), drop = TRUE]

# Plot drop_level
plot(drop_level)
##########################################
#stringsAsFactors
# Variables
credit_rating <- c("AAA", "A", "BB")
bond_owners <- c("Dan", "Tom", "Joe")

# Create the data frame of character vectors, bonds
bonds <- data.frame(credit_rating, bond_owners, stringsAsFactors = FALSE)

# Use str() on bonds
str(bonds)

# Create a factor column in bonds called credit_factor from credit_rating
bonds$credit_factor <- factor(bonds$credit_rating, ordered = TRUE, levels = c("AAA","A","BB"))

# Use str() on bonds again
str(bonds)
#########################################3
#Create a list
## List components
name <- "Apple and IBM"
apple <- c(109.49, 109.90, 109.11, 109.95, 111.03)
ibm <- c(159.82, 160.02, 159.84, 160.35, 164.79)
cor_matrix <- cor(cbind(apple, ibm))

# Create a list
portfolio <- list(name, apple, ibm, cor_matrix)

# View your first list
print(portfolio)

#################################
#Named lists

# Add names to your portfolio
names(portfolio) <- c("portfolio_name", "apple", "ibm", "correlation")

# Print portfolio
print(portfolio)

###############################33
#Access elements in a list

# Second and third elements of portfolio
portfolio[c(2,3)]

# Use $ to get the correlation data
portfolio$correlation

#################################
#Adding to a list
# Add weight: 20% Apple, 80% IBM
portfolio$weight <- c(apple = 0.20, ibm = 0.80)

# Print portfolio
print(portfolio)

# Change the weight variable: 30% Apple, 70% IBM
portfolio$weight_new <- c(apple = 0.30, ibm = 0.70)

# Print portfolio to see the changes
print(portfolio)
####################################
#Removing from a list
# Take a look at portfolio
portfolio

# Remove the microsoft stock prices from your portfolio
portfolio$microsoft <- NULL
###################################
#Split it

# Define grouping from year
grouping <- cash$year

# Split cash on your new grouping
split_cash <- split(cash, grouping)

# Look at your split_cash list
split_cash

# Unsplit split_cash to get the original data back.
original_cash <- unsplit(split_cash, grouping)

# Print original_cash
print(original_cash)
#################################3333
#Split-Apply-Combine
# Print split_cash
print(split_cash)

# Print the cash_flow column of B in split_cash
split_cash$B$cash_flow

# Set the cash_flow column of company A in split_cash to 0
split_cash$A$cash_flow <- 0

# Use the grouping to unsplit split_cash
cash_no_A <- unsplit(split_cash, grouping)

# Print cash_no_A
print(cash_no_A)
####################################
#Attributes
# my_matrix and my_factor
my_matrix <- matrix(c(1,2,3,4,5,6), nrow = 2, ncol = 3)
rownames(my_matrix) <- c("Row1", "Row2")
colnames(my_matrix) <- c("Col1", "Col2", "Col3")

my_factor <- factor(c("A", "A", "B"), ordered = T, levels = c("A", "B"))

# attributes of my_matrix
attributes(my_matrix)

# Just the dim attribute of my_matrix
attr(my_matrix, which = "dim")

# attributes of my_factor
attributes(my_factor)

#######################################
