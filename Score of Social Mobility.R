SocMob <- function(city){
  parincome <- c('high.csv','mid.csv','low.csv')
  FILES <- paste(city,parincome,sep = '_')
  
  high <- transform(read.csv(FILES[1],header=FALSE)[,c(1,3)],par=3)
  mid <- transform(read.csv(FILES[2],header=FALSE)[,c(1,3)],par=2)
  low <- transform(read.csv(FILES[3],header=FALSE)[,c(1,3)],par=1)
  allData <- rbind(high,mid,low)
  colnames(allData) <- c('tract','house_income','parent_income_rank')
  allData <- allData[which(allData$house_income>0),]
  allData <- transform(allData,house_income_rank=0,move=0)
  allData <- allData[order(allData$house_income),]
  allData[1:(nrow(allData)/3),'house_income_rank'] = 1
  allData[(nrow(allData)/3):(nrow(allData)/3*2),'house_income_rank'] = 2
  allData[(nrow(allData)/3*2):nrow(allData),'house_income_rank'] = 3
  allData$move = abs(allData$parent_income_rank - allData$house_income_rank)
  mean(allData$move)
}

Baltimore <- SocMob('Baltimore')
Boston <- SocMob('boston')
Philadelphia <- SocMob('Philadelphia')
Detroit <- SocMob('detroit')
NewYork <- SocMob('newyork')
LA <- SocMob('la')
DC <- SocMob('DC')
USA <- SocMob('USA')
Houston = SocMob('houston')
Salt_Lake_City = SocMob('salt lake city')
Seattle = SocMob('seattle')
Orlando = SocMob('Orlando')
Cooperstown = SocMob('cooperstown')

comparing <- c(Houston=Houston, Salt_Lake_City=Salt_Lake_City, Seattle=Seattle, Orlando=Orlando, Cooperstown=Cooperstown, USA=USA,Baltimore=Baltimore,Boston=Boston,Philadelphia=Philadelphia,Detroit=Detroit,NewYork=NewYork,LA=LA,DC=DC)
sort(comparing)