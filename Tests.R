# Get the file
library(curl)
file <- curl_fetch_disk("https://gist.githubusercontent.com/ampinzonv/c763c7a9d147aecec721/raw/94137aaee3530801998b481e87f23d1672664bb6/Glycolisis", tempfile())
# Read as a table
m <- read.table(file$content, row.names=NULL, quote="\"", comment.char="/")
# Change to character type
m$V1<-as.character(m$V1)
# Finding all that contains "H2O["
ans1_ind <- grep("H2O[",m$V1,value=FALSE,fixed=TRUE)
ans1<-m[ans1_ind,]
# Finding the one way reactions with product H2O
m_one_way <-lapply(m$V1,function(x) strsplit(x,c(" =>"),fixed=TRUE)[[1]][2])
one_way_ans_ind<-grep("H2O[",m_one_way,value=FALSE,fixed=TRUE)
# Finding the both way reactions with H2O
m_both_ways <-lapply(m$V1,function(x) strsplit(x,c("<=>"),fixed=TRUE)[[1]])
both_ways_ans_ind <- which(unlist(lapply(m_both_ways,function(x) length(x)==2)==TRUE))
# Getting answer
ans2_ind <- c(one_way_ans_ind, intersect(both_ways_ans_ind, ans1_ind))
ans2 <-m[ans2_ind,]
