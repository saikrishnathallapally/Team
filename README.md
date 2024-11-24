#Plotting Box Plot

boxplot(confirmed ~ group, dataframe,
        main = "Difference in the mean of Confirmed Covid Cases \n Between Groups and Non-Groups",
        xlab = "Group",
        ylab = "Confirmed Cases",
        ylim = c(0, 100),
        pch = 1, cex = .7,
        col = c("cornsilk","lightskyblue2"),
        font.lab = 1)
legend(x = "topright",
       legend = c("Non-Group", "Group"),
       lwd = 2, lty = c(0,0),
