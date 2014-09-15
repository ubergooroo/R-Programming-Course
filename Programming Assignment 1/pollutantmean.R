pollutantmean <- function(directory, pollutant, id = 1:332){
        
        
        z<-getwd()
        setwd(paste(z,"/","specdata",sep=""))
        
        v<-NA
  
        for(i in 1:332) 
        {
                if (i < 10) {
                        
                        x <- read.csv(file = paste("00", i, ".csv", sep = ""), header = TRUE, sep = ",")           
                } else if (i < 100 ) {
                        # Execute this only if x > 10 and x <= 100
                        x <- read.csv(paste("0", i, ".csv", sep = ""), header = TRUE, sep = ",")
                } else  {
                        # Execute this only if x > 10 and x <= 100
                        x <- read.csv(paste(i, ".csv", sep = ""), header = TRUE, sep = ",")
                }
                
                y <- x$sulfate   
                v <- c(v,y)
                

                
        }
        
        setwd(z)
        mean(v[id], na.rm=TRUE)
 
   
}



