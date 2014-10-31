setClass("TimeSeries",
         representation(
                 data="numeric",
                 start="POSIXct",
                 end="POSIXct"
         )
)

my.TimeSeries <- new("TimeSeries",
                     data=c(1, 2, 3, 4, 5, 6),
                     start=as.POSIXct("07/01/2009 0:00:00", tz="GMT",
                                      format="%m/%d/%Y %H:%M:%S"),
                     end=as.POSIXct("07/01/2009 0:05:00", tz="GMT",
                                    format="%m/%d/%Y %H:%M:%S")
)

setValidity("TimeSeries",
            function(object) {
                    object@start <= object@end &&
                            length(object@start) == 1 &&
                            length(object@end) == 1
            }
)

good.TimeSeries <- new("TimeSeries",
                       data=c(7, 8, 9, 10 ,11, 12),
                       start=as.POSIXct("07/01/2009 0:06:00", tz="GMT",
                                        format="%m/%d/%Y %H:%M:%S"),
                       end=as.POSIXct("07/01/2009 0:11:00", tz="GMT",
                                      format="%m/%d/%Y %H:%M:%S")
)

bad.TimeSeries <- new("TimeSeries",
                      data=c(7, 8, 9, 10, 11, 12),
                      start=as.POSIXct("07/01/2009 0:06:00", tz="GMT",
                                       format="%m/%d/%Y %H:%M:%S"),
                      end=as.POSIXct("07/01/1999 0:11:00", tz="GMT",
                                     format="%m/%d/%Y %H:%M:%S")
)

period.TimeSeries <- function(object) {
        if (length(object@data) > 1) {
                (object@end - object@start) / (length(object@data) - 1)
        } else {
                Inf
        }
}

series <- function(object) {object@data}
setGeneric("series")

period <- function(object) {object@period}
setGeneric("period")
setMethod(period, signature=c("TimeSeries"), definition=period.TimeSeries)
