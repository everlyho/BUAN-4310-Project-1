#visualization done for filtered data of US and India 
getwd()
setwd("C:/Users/DHANYA/Desktop/execls dhanya/BUAN-4310-Project-1-main")
patent_data=read.csv("BUAN 4310 Project1 Dataset.csv")
View(patent_data)
names(patent_data)
table(patent_data$ee_number)
table(patent_data$ee_role)



#highest no:of application between India and US
table(patent_data$ee_country)
#US has the filed highest no:of applications



# highest and lowest no:of patents filed
table(patent_data$ee_role_desc)
#United states of company or corporation has filed  highest no:of patents
#Foreign company or corporation has filed lowest no:of patents



#state that as filed highest and lowest no:of patents 
table(patent_data$ee_state)
sort(table(patent_data$ee_state))
#CA,has filed highest no:of patents
#HI and SD,has filed lowest no:of patents



#City that as highest and lowest no:of patents
table(patent_data$ee_city)
tail(sort(table(patent_data$ee_city)))
head(sort(table(patent_data$ee_city)))
#Armonk city has the highest no:of patents
#Acton,ACworth,Ahmedabad Gujarat,Alachua,Alger,Alhambra has the lowest no:of patents



#patent with maximum forward citations
max(patent_data$forward_cites)
#786 times it has been cited by later patents
#patent with applnum=13214872 has highest forward citations


#Time taken for approval(at=approval time)
table(patent_data$grantyear)
table(patent_data$applyear)
patent_data$at=patent_data$grantyear-patent_data$applyear
max(patent_data$at)
table(patent_data$at)
#The maximum years taken for approval is 9 years



#The summary of the patent_data
summary(patent_data)
#It gives mean , median


#Pie chart
pie(table(patent_data$ee_country),radius = 1)
pie(table(patent_data$ee_role_desc),radius = 0.8)


#Barplots
barplot(table(patent_data$at))
barplot(table(patent_data$applyear),(patent_data$grantyear))
barplot(table(patent_data$grantyear),(patent_data$applyear))


# plot
plot((table(patent_data$ee_role)),type="p")

#Histogram
hist(patent_data$at,col="orange",main="APPROVAL TIME",xlab="at")
