#
# Author: Mark Elo
# Name: readTextFile
# Function: Reads the contens of a csv aquisition file, generated by Tek RSA
# Args: file name
#

function v = readIQCsvFile (filename)

  if ((m = nargchk (1,1,nargin))) # validate unber of input args
    usage (m);
  endif;
  
    v = dlmread (filename, ',', 10,0); #ignore first 10 lines of header
    disp(length(v));
  
endfunction;