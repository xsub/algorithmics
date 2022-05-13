/* (c) 2022 Pawel.Suchanecki@gmail.com 
 *
 * This solves https://leetcode.com/problems/decode-xored-array/.
 *
 * It uses additional storage (arr vector) to hold the decoded values.
 */

#include <cstdint>
#include <iostream>
#include <vector>

class Solution {
public:
        std::vector<int> decode(std::vector<int>& encoded, int first) {
        std::vector<int> arr;
            
        int element=first;
        arr.push_back(element);
        for (auto x=0; x<encoded.size(); x++)
        {
            element = element^encoded[x];
            arr.push_back(element);
        }
        return arr;
    }
};

int main() {
	std::vector<int> encoded{6, 2, 7, 3};
	for (auto z : encoded) { std::cout << z << ", "; }

	Solution S;
	S.decode(encoded, 4);

	for (auto z : encoded) { std::cout << z << ", "; }
}

