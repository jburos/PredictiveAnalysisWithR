require(lme4); data(iris)

## calculate on original data
total_petal_length <- sum( iris$Petal.Length ) 
num_flowers <- length( iris$Petal.Length )

## check after transform to iris3long
require(devtools); source_gist(5946357)
stopifnot( total_petal_length == 
             sum( subset( iris3long, flower_part == "Petal" & variable == "Length" )$value )
)

stopifnot( num_flowers ==
             length( unique( iris3long$id ) )
)
