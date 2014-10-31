library(RODBC)
tracerDatasets <- function(fileName = "Tracer_DataExtract.mdb") {
        
        myConn <- odbcConnectAccess(fileName)
        events <- sqlQuery(myConn,"Select * From Event")
        tasks  <- sqlQuery(myConn, "Select * from  Event_Task")
        data <- list(events = events,tasks = tasks)
        close(myConn)
        return(data)
}


