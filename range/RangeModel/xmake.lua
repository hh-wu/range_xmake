add_rules("mode.debug", "mode.release")

add_requires("libomp", {optional = true})
target("RangeModel")
    add_rules("qt.static")
    add_deps("TetGen","RangeBase")
    
    add_defines("RANGEMODEL_LIBRARY")

    add_defines("FILE_MAJOR_VERSION=1")
    add_defines("FILE_MINOR_VERSION=1")
    add_defines("FILE_RELEASE_VERSION=0")
    add_defines("TETLIBRARY")

    add_includedirs("include")
    add_includedirs("../TetGen")
    add_includedirs("../RangeBase/include")

    add_files("src/*.cpp","include/*.h")
    add_headerfiles("include/*.h")
    
    -- openmp
    add_frameworks("QtGui","QtCore")
    add_rules("c++.openmp")
    add_packages("libomp")
    
