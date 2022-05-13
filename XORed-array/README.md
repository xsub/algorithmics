This repo contains three solutions to xored array problem:
https://leetcode.com/problems/decode-xored-array/.

First one is naive and uses extra memory, two following use the
input vector/array to store decoded values (subsituting original
contents and adding one element).

Version 2 and 3 focus on demonstrating GCC compiler optimization
caveat regarding signed integer overflow wich is not possible for
unsigned integer as in C/C++ standard the former is an undefined
behaviour, while the latter is defined.  Using signed integer for
loop indexes allows the compiler to assume that such loops have
fewer corner cases.
