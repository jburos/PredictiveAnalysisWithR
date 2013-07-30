require(reshape2); require(plyr); require(lubridate); require(lme4); data(sleepstudy)

sleeplong <- melt( sleepstudy
                   , id.vars = c( "Subject", "Days")
)

sleepstudy3 <- mutate( .data = sleepstudy
                       , start_date = as.Date( '2012-01-01' )
                       , reaction_date = as.Date( start_date + Days, origin = '1970-01-01')
                       , day_of_week = lubridate::wday( reaction_date, label = T )
)
head( sleepstudy3, n = 3 )

sleeplong3 <- melt( sleepstudy3
                    , id.vars = c( "Subject", "Days" )
)

head( sleeplong3, n = 3 )

subset( sleeplong3, Subject == 308 & Days == 0)


str( sleepstudy3 )
str( sleeplong3 )
str( sleeplong ) 
