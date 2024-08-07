#include "stddef.h"
#include <utility>

template <typename T>
class my_vector
{
public:
    my_vector();
    my_vector(const my_vector<T> &_) = delete;
    my_vector(my_vector<T> &&vec);
    T &operator=(const my_vector<T> &vec) = delete;
    T &operator=(my_vector<T> &&vec);
    T& operator[](int indx);
    const T& operator[](int indx) const;
    void push_back(const T &t);
    void push_back(T &&t);
    void pop_back();
    void clear();
    ~my_vector();

    template <typename... Args>
    T &emplace_back(Args... args);

private:
    T *data = nullptr;
    size_t size = 0;
    size_t capacity;

    void __realloca__(size_t new_capacity);
};

template <typename T>
T &my_vector<T>::operator=(my_vector<T> &&vec)
{
    if (vec.data != data)
    {
        clear();
        ::operator delete(data, capacity * sizeof(T));
    }

    data = std::move(vec.data);
    size = std::move(vec.size);
    capacity = std::move(vec.capacity);

    vec.data = nullptr;
}

template <typename T>
template <typename... Args>
T &my_vector<T>::emplace_back(Args... args)
{
    if (size >= capacity)
    {
        __realloca__(capacity + capacity);
    }
    new (&data[size]) T(std::forward<Args>(args)...);
    return data[size++];
};

template <typename T>
T& my_vector<T>::operator[](int index){
    if (index >= size){
        // Error
    }

    return data[index];
}

template <typename T>
const T& my_vector<T>::operator[](int index) const{
    if (index >= size){
        // Error
    }

    return data[index];
}
