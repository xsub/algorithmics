Why use C++ lambdas? My 2 cents.
================================


This includes two versions of trivial reverse string function in C++ (no library functions allowed).<br>
Both are using the same algorithm but the `str-rev-lambda.cpp` uses... C++ lambda to encapsulate 
the code.

The result on both x86_64 and ARM platforms is... less code in assembly output and smaller object file.<br>
The difference is exactly 88 bytes in size of executable (on both platforms) in favor of lambda version.

Where does this difference come from?
-------------------------------------

It seems that using lambda eliminates the need to link with glibc, thus the *__libc_csu_init* section is not present<br>
in the object file (is not statically compiled into our program).<br>
See: https://michaeltrottier.com/en/gdb/gdb-what-happens-main/ 

Btw. the subject releats to the ROP gadget, and may be relevant to specific compiler version:
https://github.com/bminor/glibc/commit/035c012e32c11e84d64905efaf55e74f704d3668 .

Note: Version used to compile was: *gcc version 9.4.0 (Ubuntu 9.4.0-1ubuntu1~20.04.1)*.
