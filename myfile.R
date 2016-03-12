# myfile.R

#* Host the root page
#* @get /
function(res, number=round(runif(1,1,73))){
    
    filepath <- paste("C:/Users/kylehamilton/Desktop/Test_Maggie_API/",number,".jpg",sep="")
    con <- file(filepath, "rb")
    img <- readBin(con, "raw", file.info(filepath)$size)
    close(con)
    res$body <- img
    res$setHeader("Content-type", "image/jpeg")
    res
  }
