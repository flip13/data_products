library(shiny)
library(seqinr)
shinyServer(
    function(input,output) {
        output$oid1 <- reactive({
            sterm <<- tolower(input$id1)
         print((sterm))
        })
        output$ofile1 <- reactive({
            temp <- NULL
            numit <- NULL
            inFile <- input$file1
            
            if (is.null(inFile))
                return(NULL)
            
            dnaseq <- tolower(read.fasta(inFile$datapath, seqonly=T))
            
            for(j in 1:length(dnaseq)) {
                temp <- data.frame(count(s2c(dnaseq[[j]]), nchar(sterm)))
                numit[[j]] <- temp$Freq[which(temp$Var1 == sterm)]
            }
        sum(numit)
        })
    }    
)