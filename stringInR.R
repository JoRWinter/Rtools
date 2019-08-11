stringInR<-function(STRING,FILE){
  if(grepl(STRING, #search for "string" in:
        paste(readLines(FILE), #read FILE as text
          collapse=" ") #collapse separates the lines of the text file into a single string, separated by spaces
  )==TRUE){
    print(FILE)
    if (exists("x")) {
      x<<-TRUE
    }
  }
}

findStringInFiles<-function(STRING,FOLDER){
  x<<-FALSE
  for (f in list.files(FOLDER)){
    if (grepl(".R",f)==TRUE){
      stringInR(STRING,paste0(FOLDER,f))
    }
  }
  if (x==FALSE){
    print(paste("No files contain the string",STRING))
  }
  rm(x, envir = .GlobalEnv)
}

#Optional
Rfiles<-#directory
x<-as.data.frame(list.files(Rfiles))

