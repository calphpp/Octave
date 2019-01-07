#
# Author: Mark Elo
# Name: readBinFile
# Function: Reads the contens of a binary file from GNU Radio
# Args: file name
#

function v = readBinFile (filename)

  if ((m = nargchk (1,1,nargin))) # validate unber of input args
    usage (m);
  endif;

  f = fopen (filename, "rb"); # open read (r) type bin (b)

  if (f < 0)
    v = 0;
  else

    v = fread (f, [2, 10], 'float');
    disp(size(v));
    disp(v(1,1));
    disp(v(1,2));
    #disp(v);
    fclose (f);
    
  endif;
endfunction;