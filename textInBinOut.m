#
# Author: Mark Elo
# Name: binInTextOut
# Usage: takes in IQ data matrix and outputs GNU Radio Bin Format
# Args: file name
#

function v = textInBinOut(data, fout)

  if ((m = nargchk (2,2,nargin))) # validate unber of input args
    usage (m);
  endif;

  #fin = fopen (inFile, "rb"); # open read (r) 
  f = fopen (fout, "wb"); # open write (w) type bin (b)

  dataStringLen = length(data);
  disp(dataStringLen);
  cnt2 = 1;
  
  for cnt = 1:dataStringLen
    newData(cnt2) = data(cnt,1);
    newData(cnt2+1) = data(cnt,2);
    cnt2 = cnt2 + 2;
  endfor
  
  v = newData;
  
  fwrite (f, v, "float"); 
  fclose (f);
    
 
endfunction;