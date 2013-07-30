require(reshape2); require(plyr); require(lubridate); require(lme4); data(sleepstudy)

sleepstudy2 <- mutate( .data = sleepstudy
                       , operator_id = seq(from = 1, to = 3, by = 1)
                       )

sleeplong2 <- melt( sleepstudy2
                    , id.vars = c( "Subject", "Days" )
                    )

head( sleepstudy2 )

head( sleeplong2 )

subset( sleeplong2, Subject == 308 & Days <= 3 )


str( sleepstudy2 )
str( sleeplong2 )
