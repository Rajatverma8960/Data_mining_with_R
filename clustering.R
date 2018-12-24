NSE.HCLTECH$Date<-as.Date(NSE.HCLTECH$Date)
NSE.INFY$Date<-as.Date(NSE.INFY$Date)
NSE.TCS$Date<-as.Date(NSE.TCS$Date)
NSE.TECHM$Date<-as.Date(NSE.TECHM$Date)
NSE.WIPRO$Date<-as.Date(NSE.WIPRO$Date)

Extracted_hcl_dataset<-NSE.HCLTECH[NSE.HCLTECH$Date<="2017-01-31" & NSE.HCLTECH$Date>="2015-01-01", ]
HCL_required_field<-subset(Extracted_hcl_dataset,select = c(Date,Open))
plot(HCL_required_field,type = "h",main="HCL STOCK GRAPH 2015-2017",xlab="Date",ylab="Opening Stock")


