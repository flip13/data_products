library(shiny)
library(seqinr)
shinyUI(pageWithSidebar(
    headerPanel("Data Sciece Products Course Project"),
    sidebarPanel(
        
         p("This application counts the number of times a nucleic or amino-acid (A, C, G, or T) sequence of interest appears in a gene as shown in a FASTA file.  An example FASTA file can be downloaded ",
            tags$a(href = "example.fasta", target="_blank", "here.")),
          br(),
        
        h3('Data Input'),
        textInput("id1","DNA Sequence for which you want to search in the data","ctagat"),
        fileInput("file1", "Upload a FASTA file of the genome to be searched",accept=c('text/fasta','text/plain','.fasta'))
        ),
    mainPanel(
        h3('Data Output'),
        h4('DNA sequence you entered'),
        verbatimTextOutput("oid1"),
        h4('Number of times the sequece is in the genomes'),
        verbatimTextOutput("ofile1")
        )
    )
        
        
)