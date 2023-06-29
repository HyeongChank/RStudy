

?quakes
require(graphics)
pairs(quakes, main = "Fiji Earthquakes, N = 1000", cex.main = 1.2, pch = ".")
quakes

library(lattice)
equal.count(quakes$depth, number=3, overlap=0)

depthgroup <- equal.count(quakes$depth,
                          number = 3,
                          overlap=0)
magnitudegroup <- equal.count(quakes$mag,
                              number=2,
                              overlap=0)
xyplot(lat ~ long | magnitudegroup*depthgroup, data=quakes)

library("latticeExtra")
install.packages("latticeExtra")
xyplot(min.temp + max.temp ~ day | month,
       data=SeatacWeather)
