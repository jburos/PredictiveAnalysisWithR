require(reshape2); require(lme4)
data(sleepstudy)

sleeplong <- melt( sleepstudy
                   , id.vars = c( "Subject", "Days")
)

head( sleepstudy , n = 3 )

head( sleeplong , n = 3 )
