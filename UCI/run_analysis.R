
                    #Reads, merges and writes data
  mrg <- function(test, train, doc){
    
    test <- read.table(test)
#head(test)
#str(test)
    train <- read.table(train)
#head(train)
#str(train)    
    org <- merge(test,train,all = TRUE)
#str(org)
    write.table(org, file = doc)

}
                   #various links of files
  test <- "/home/sanjit/UCI HAR Dataset/test/y_test.txt"
  train <- "/home/sanjit/UCI HAR Dataset/train/y_train.txt"
  doc <- "/home/sanjit/UCI HAR/Dataset/y.txt"
  mrg(test, train, doc)

                   #finds and writes mean
  
  findmean <- function(doc){
    
    rdata <- read.table(doc)
#head(rdata)
    wrt<- sapply(rdata,mean)
#print(wrt)
    wdoc <- paste("Mean_",doc,sep = "")
#print(wdoc)
    write.table(wrt,file = wdoc)
  }
                   #various links of files are given to doc
  
  doc <- "total_acc_z.txt"
  findmean(doc)
a <- read.table("y2.txt",fill = TRUE)
b <- read.table("body_acc_x_test.txt")
c <- cbind(a,b)
write.table(c,file="result.txt")
