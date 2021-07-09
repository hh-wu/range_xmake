add_rules("mode.debug", "mode.release")

add_requires("libomp", {optional = true})
target("RangeSolverLib")
    add_rules("qt.static")

    add_defines("RANGESOLVERLIB_LIBRARY")

    add_defines("TETLIBRARY")

    add_includedirs("include")
    add_includedirs("../TetGen")
    add_includedirs("../RangeBase/include")
    add_includedirs("../RangeModel/include")

    add_files("src/*.cpp")
    add_headerfiles("include/*.h")
    
    -- openmp
    add_frameworks("QtCore","QtGui")
    add_rules("c++.openmp")
    add_packages("libomp")

    add_deps("RangeModel")