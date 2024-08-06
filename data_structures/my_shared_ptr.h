#include <stddef.h>
#include <utility>

template <typename T>
struct my_shared_ptr{
    T* t;
    size_t* ref_count;

    my_shared_ptr():t(nullptr), ref_count(new size_t(0)){}

    my_shared_ptr(T* nptr):t(nptr), ref_count(new size_t(1)){}

    my_shared_ptr(const my_shared_ptr& ptr);

    my_shared_ptr<T>& operator=(const my_shared_ptr<T>& ptr);

    my_shared_ptr(my_shared_ptr&& ptr);

    my_shared_ptr<T>& operator=(my_shared_ptr<T>&& ptr);

    ~my_shared_ptr();

    void __cleanup__();
    
};


template <typename T>
my_shared_ptr<T>& my_shared_ptr<T>::operator=(const my_shared_ptr<T>& ptr){
        if (t != ptr.t) __cleanup__();
        t = ptr.t;
        ref_count = ptr.ref_count;

        if (t != nullptr){
            (*ref_count)++;
        }

        return *this; 
}

template <typename T>
my_shared_ptr<T>& my_shared_ptr<T>::operator=(my_shared_ptr<T>&& ptr){
        if (t != ptr.t) __cleanup__();
        t = std::move(ptr.t);
        ref_count = std::move(ptr.ref_count);
        ptr.t = nullptr;
        ptr.ref_count = nullptr;

        return *this; 
}
