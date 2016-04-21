corr <- function(directory, threshold = 0){
		num <- 0
		sulf <- numeric()
		nit <- numeric()
		ret <- numeric()
		for(num in 1:332){
				mydata<-read.csv(paste(directory,"/",sprintf("%03d",num),".csv",sep=""))
				cmp <- na.omit(mydata[1:nrow(mydata),])
					if(nrow(cmp)>threshold) {
						sulf<- cmp[1:nrow(cmp),"sulfate"]
						nit<-cmp[1:nrow(cmp),"nitrate"]
						ret<-append(ret,cor(sulf,nit))
						} 
				}
		ret
	}