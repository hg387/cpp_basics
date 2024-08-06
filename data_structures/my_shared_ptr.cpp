#include "my_shared_ptr.h"

template <typename T>
my_shared_ptr<T>::my_shared_ptr(const my_shared_ptr<T>& ptr){
    
    t = ptr.t;
    ref_count = ptr.ref_count;

    if (t != nullptr){
        (*ref_count)++;
    } 
};

template <typename T>
my_shared_ptr<T>::~my_shared_ptr(){
    __cleanup__();
};

template <typename T>
my_shared_ptr<T>::my_shared_ptr(my_shared_ptr<T>&& ptr){
    t = std::move(ptr.t);
    ref_count = std::move(ptr.ref_count);
    ptr.t = nullptr;
    ptr.ref_count = nullptr;
}


template <typename T>
void my_shared_ptr<T>::__cleanup__(){
    if (ref_count != nullptr){
        (*ref_count)--; 

        if (*ref_count == 0){
            if (t != nullptr) delete t;
            delete ref_count;
        }
    }
}
