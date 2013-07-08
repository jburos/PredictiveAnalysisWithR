require(reshape2); require(plyr); require(lubridate); require(lme4); data(sleepstudy)

sleepstudy2 <- mutate( .data = sleepstudy
                       , start_date = as.Date( '2012-01-01' )
                       , reaction_date = as.Date( start_date + Days, origin = '1970-01-01')
                       , day_of_week = lubridate::wday( reaction_date, label = T )
                       )
head( sleepstudy2, n = 3 )

sleeplong2 <- melt( sleepstudy2
                    , id.vars = c( "Subject", "Days" )
                    )

head( sleeplong2, n = 3 )

subset( sleeplong2, Subject == 308 & Days == 0)


str( sleepstudy2 )
str( sleeplong2 )
