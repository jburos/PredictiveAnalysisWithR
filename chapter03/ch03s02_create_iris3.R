require( devtools ); source_gist( 5946178, echo = TRUE )

irislong2 <- mutate(irislong
                    , flower_part = gsub( variable
                                          , pattern = "([[:alpha:]]+).([[:alpha:]]+)"
                                          , replacement = "\\1"
                                          , perl = T
                                          )
                    , measurement = gsub( variable
                                          , pattern = "([[:alpha:]]+).([[:alpha:]]+)"
                                          , replacement = "\\2"
                                          , perl = T
                                          )
                    )

iris3 <- dcast(irislong2, formula = id + Species + flower_part ~ measurement)

head(iris3)

iris3 <- mutate( iris3
                 , ratio_lw = Length / Width
                 )

iris3long <- melt(iris3, id.vars=c("id","Species","flower_part"))

dcast( data = subset(iris3long, variable == "ratio_lw")
       , formula = flower_part ~ Species + variable
       , fun.aggregate = mean
       , na.rm = T
       )
