# This script converts a CSV file with headers to XML or JSON, depending on
# the command line argument supplied.
#
# This script will be executed by calling:
#
#    ```
#    Rscript src/lab1.py xml/json <filename>
#    ```
#
# Output of XML and JSON should be printed to stdout.


require(jsonlite)
require(XML)

main <- function(){
  args <- commandArgs(trailingOnly = TRUE)
  output_type <- args[1]
  file_name <- args[2]
  cat(args, sep='\n')
  data <- parse_csv(filename = file_name)
  if (tolower(output_type) == 'json'){
    prep_data <- prepare_data(data = data)
  }
  if (output_type == 'json'){
    json_file <- convert_json(data = df)
  } else if (output_type == 'xml'){
    xml_file <- convert_xml(data=df)
  }
}

main()
#In terminal: Rscript print-args.R xml sample.csv

parse_csv <- function(filename){
  # Parse a CSV file by separating it into headers and additional data.
  #
  # Args
  # filename: A path to a CSV file.
  #     
  # Returns
  # An R structure containing the headers from the csv file and the data.
  x <- read.csv(file = filename, stringsAsFactors = FALSE)
  return(x)
}

###################################
# Create your other functions here.
###################################
convert_json <- function(x){
  json_data <- jsonlite::toJSON(x, pretty = TRUE)
  return(json_data)
  }
}

convert_xml <- function(x){
  ###LOOK AT PIC###
  
  col_
  convertToXML <- function(df,name) {
    xml <- xmlTree("report")
    xml$addNode(name, close=FALSE)
    for (i in 1:nrow(df)) {
      xml$addNode("page", close=FALSE)
      for (j in names(df)) {
        xml$addNode(j, df[i, j])
      }
      xml$closeTag()
    }
    xml$closeTag()
    return(xml)
  }
}

Convert_xml <- functions(data){
  Col_names <- colnames(data)
  Rec_xml <- XML:: xmlTree()
  rec_xml$addTag('records', close = FALSE) 
  for(i in 1:nrow(data)){
    rec_xml$addTag('patient', close = FALSE)
    for(j in colnames(data)){
      rec_xml$addTag(j, data[i,j])
    }
    rec_xml$closeTag()
  }
  rec_xml$closeTag()
  return(saveXML(rec_xml))
}

prepare_data <- function(data){
  rec_df <- data
  rec_df$patient <- data.frame(rec_df)
  rec_data <- list('records'= rec_df['patient'])
  return(rec_data)
}
