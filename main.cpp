#include <stdio.h>
#include <utility>
#include "data_structures/my_shared_ptr.cpp"
#include "data_structures/my_vector.h"

int main(int, char**){
    printf("Hello, from cpp_basics!\n");

    my_shared_ptr<int> p1{new int{2}};
    my_shared_ptr<int> p2{new int{3}};
    p1 = std::move(p2);
    my_shared_ptr<int> p3(p1);

    
}
