salary <- c(18700000, 14626720, 14137500, 13980000, 12916666)
position <- c("QB", "QB", "DE", "QB", "QB")
team <- c("Colts", "Patriots", "Panthers", "Bengals", "Giants")
name.last <- c("Manning", "Brady", "Pepper", "Palmer", "Manning")
name.first <- c("Peyton", "Tom", "Julius", "Carson", "Eli")

top.5.salaries <- data.frame(name.last, name.first, team, position, salary)

identify(air_on_site/Surface_Area, deaths_lung/Population,
         State_Abbrev)


plot(air_on_site/Surface_Area, deaths_lung/Population,
     xlab="Air Release Rate of Toxic Chemicals",
     ylab="Lung Cancer Death Rate")
text(air_on_site/Surface_Area, deaths_lung/Population,
     labels=State_Abbrev,
     cex=0.5,
     adj=c(0,-1))