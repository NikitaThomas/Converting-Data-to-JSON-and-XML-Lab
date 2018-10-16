# Lab - (Programmatically) Convert Data to JSON and XML #

You will be provided with data in a comma-separated ASCII text file (e.g.
_sample.csv_). The file will be formatted such that the first line consists
of the field names and all subsequent lines contain actual data to be encoded
to both XML and JSON. The field names will be used as the XML tags and JSON
keys.

For example, if the first field name is "mrn" the corresponding XML tag would
be "mrn" and the JSON key would be "mrn". Each row of CSV file contains
several `records` and every row is a record for a single `patient`.

You will be writing a standalone R script (named _lab1.R_, in the _src_
folder) that can be invoked via the command line and will write the desired
output to stdout.  

Your general program flow should be as follows:

1. Take the input filename as a command line parameter.

  ```bash
  # XML output:
  $ Rscript ./src/lab1.R xml sample.csv

  # JSON output:
  $ Rscript ./src/lab1.R json sample.csv
  ```
2. Read the CSV file.
3. Perform any processing of the data that may be necessary.
4. Use the XML and JSON processing modules to write your outputs to stdout.

Because the output of your program will be verified automatically, whitespace
will not be an issue so you are welcome to format the whitespace as you want.


