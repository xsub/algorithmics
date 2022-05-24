#include <iostream>
#include <string>

int main() {
    std::string str ="abcdefg";
    std::cout << "String as input: " << str << std::endl;

    int len = str.size();

    [&str, &len] {
        for (int i=0; i<len/2; i++) {
            int other_end = len-1-i;
            char c = str[other_end];
            str[other_end] = str[i];
            str[i] = c;
        }
    };

    std::cout << "String reversed: " << str << std::endl;
}
