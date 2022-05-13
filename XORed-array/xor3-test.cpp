/* (c) 2022 Pawel.Suchanecki@gmail.com
 *
 * This solves https://leetcode.com/problems/decode-xored-array/.
 *
 * It does not additional storage to hold the decoded values,
 * instead it substitues the encoded values in the input vector,
 * extending it by adding 1 additional element at the end and
 * it does not use unsigned int in the loop.  In theory this
 * should be slower, but due to compiler optimizations -
 * it might be actually faster as e.g. GCC always assumes,
 * that signed overflow does never occur, see:
 * https://gamedev.stackexchange.com/a/7945 (also true for C++).
*/

#include <cstdint>
#include <iostream>
#include <vector>

class Solution {
public:
    std::vector<int> decode(std::vector<int>& encoded, int first) {
        int temp=encoded[0];
        encoded[0]=first;
        int decoded;
        int prev;
        for (int32_t x=(-1); encoded.size()-1>++x;) {
            prev=encoded[x];
            decoded= prev ^ temp;
            temp = encoded[x+1];
            encoded[x+1]=decoded;
        }
        decoded=encoded[encoded.size()-1] ^ temp;
        encoded.push_back(decoded);
        return encoded;
    }
};

int main() {
	std::vector<int> encoded{6, 2, 7, 3};
	for (auto z : encoded) { std::cout << z << ", "; }

	Solution S;
	S.decode(encoded, 4);

	for (auto z : encoded) { std::cout << z << ", "; }
}

