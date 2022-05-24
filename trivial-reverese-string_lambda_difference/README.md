Why use C++ lambdas? My 2 cents.
--------------------------------

This includes two versions of trivial reverse string function in C++ (no library functions allowed).

Both are using the same algorithm but the `str-rev-lambda.cpp` uses... C++ lambda to encapsulate 
the code. 

The result on both x86_64 and ARM platforms is... less code in assembly output and smaller object file.

The difference is exactly 88 bytes in size of executable (on both platforms) in favor of lambda version. 
