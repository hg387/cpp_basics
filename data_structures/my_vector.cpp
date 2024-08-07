#include "my_vector.h"

template <typename T>
my_vector<T>::my_vector(){
    __realloca__(2);
};

template <typename T>
my_vector<T>::my_vector(my_vector<T>&& vec){
    data = std::move(vec.data);
    size = std::move(vec.size);
    capacity = std::move(vec.capacity);

    vec.data = nullptr;
};

template <typename T>
void my_vector<T>::clear(){
    for (int i=0; i!=size; ++i){
        data[i].~T();
    }
    size = 0;
}

template <typename T>
size_t my_vector<T>::Size(){
    return size;
}

template <typename T>
void my_vector<T>::push_back(const T& t){
    if (size >= capacity){
        __realloca__(capacity+capacity);
    }

    data[size] = t;
    size++;
};

template <typename T>
void my_vector<T>::push_back(T&& t){
    if (size >= capacity){
        __realloca__(capacity+capacity);
    }

    data[size] = std::move(t);
    size++;
};

template <typename T>
void my_vector<T>::pop_back(){
    if (size != 0){
        data[size--].~T();
    }
};

template <typename T>
void my_vector<T>::__realloca__(size_t new_capacity){
    T* new_data = reinterpret_cast<T*>(::operator new(sizeof(T)*new_capacity));

    for (size_t i=0; i!=size; ++i){
        new (&new_data[i]) T(std::move(data[i]));
    }

    for (size_t i=0; i!=size; ++i){
        data[i].~T();
    }
    ::operator delete(data, capacity*sizeof(T));
    data = new_data;
    capacity = new_capacity;
}

template <typename T>
my_vector<T>::~my_vector(){
    clear();
    ::operator delete(data, capacity*sizeof(T));
}
