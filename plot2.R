
df <- read.table("household_power_consumption.txt",sep=";",header=TRUE,colClasses=c("character","character","character","character","character","character","character","character","character"))
date_vec <- c("1/2/2007","2/2/2007")
not_required <- c("?")
new_df <- subset(df,(Date%in%date_vec)&!(Global_active_power%in%not_required))

plot(as.numeric(new_df$Global_active_power), type="o", col="black",axes=FALSE,ann=FALSE)
lines(as.numeric(new_df$Global_active_power))     
axis(1, at=1:3, lab=c("Thu","Fri","Sat"))
axis(2, las=1, at=c(0,2,4,6))
box()
title(xlab="Days")
title(ylab="Global_active_power")

