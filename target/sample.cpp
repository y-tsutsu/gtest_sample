#include <iostream>
#include "myadd.h"
 
int main(int argc, char* argv[])
{
    const int c = mytest::myadd(1, 2);
    std::cout << c << std::endl;
    return 0;
}
