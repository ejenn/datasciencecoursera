complete <- function(directory, id = 1:332) {
		num <- 0
		id2 <- c()
		nobs <- c()
		cmp <- data.frame("date"=numeric(),"sulfate"=numeric()
				,"nitrate"=numeric(),"ID"=numeric())
		out <- data.frame("id" = numeric(),"nobs" = numeric())
		for(num in id){
				mydata<-read.csv(paste(directory,"/",sprintf("%03d",num),".csv",sep=""))
				cmp <- na.omit(mydata[1:nrow(mydata),])
				id2 <- append(id2, num)
				nobs <- append(nobs, nrow(cmp))
				}
		out <- data.frame("id" = id2, "nobs" = nobs)
		out
	}