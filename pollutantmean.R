pollutantmean <- function(directory,pollutant,id=1:332){
		num <- 0
		pol <- numeric()
		for(num in id){
				mydata<-read.csv(paste(directory,"/",sprintf("%03d",num),".csv",sep=""))
				pol <- append(pol,na.omit(mydata[1:nrow(mydata),pollutant]))
				}
		mean(pol, na.rm=TRUE)
	}