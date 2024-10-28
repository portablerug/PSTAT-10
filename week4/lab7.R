#Lab 7
#probabilty
#-----------------------------------------------------------
#find 32!
factorial(32)
prod(1:32)
#-----------------------------------------------------------
#How many different ways can 5 ULA’s be assigned to 3 
#classes? (Assume 1 ULA per class)
ula <- 5
classes <- 3

#finding assinged classes permutation
# 5P3 == 5!/(5-3)
factorial(5)/factorial(5-3)
choose(5,3)*factorial(3)

#-----------------------------------------------------------
#How many diff ways can a professor choose 10 out of 85 exam papers 
#to rwview assuming orders does not matter
#Combination 85C10 = 85!/
choose(85,10)

