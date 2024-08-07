add_library(data_structures 
            my_shared_ptr.cpp 
            my_shared_ptr.h 
            my_vector.cpp 
            my_vector.h
            )

target_compile_features(data_structures PUBLIC cxx_std_20)
