#'
#'@title Estimating weibull parameter
#'@description Function that estimates two parameters of Weibull distribution
#'@param dataset the time series data
#'@author Yu Jiang
#'@export

weibull_par=function(dataset){
  shape<-(sd(dataset)/mean(dataset))^(-1.086)
  scale<-mean(dataset)/(gamma(1+1/shape))
  shape_scale<-c(shape,scale)
  return(shape_scale)
}
