
df <- read.table("household_power_consumption.txt",sep=";",header=TRUE,colClasses=c("character","character","character","character","character","character","character","character","character"))
date_vec <- c("1/2/2007","2/2/2007")
not_required <- c("?")
new_df <- subset(df,(Date%in%date_vec)&!(Global_active_power%in%not_required))
new_df
hist(as.numeric(df$Global_active_power), col="red")