/* (c) 2022 Pawel.Suchanecki@gmail.com
 *
 * This solves https://leetcode.com/problems/decode-xored-array/.
 *
 * It does not additional storage to hold the decoded values,
 * instead it substitues the encoded values in the input vector, 
 * extending it by adding 1 additional element at the end.
 */

#include <stdint.h>
#include <vector>

class Solution {
public:
	std::vector<int> decode(std::vector<int>& encoded, int first) {
       
	int temp=encoded[0];
	encoded[0]=first;
  	int decoded;	
        for (uint32_t x=0; x<encoded.size()-1; x++)
        {
	    int prev=encoded[x];
	    decoded= prev ^ temp;
	    temp = encoded[x+1];
	    encoded[x+1]=decoded;
        }
	decoded=encoded[encoded.size()-1] ^ temp;
	encoded.push_back(decoded);
        return encoded;
    }
};
