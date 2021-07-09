add_rules("mode.debug", "mode.release")

add_requires("libomp", {optional = true})
target("RangeTests")
    add_rules("qt.console")

    add_includedirs("../TetGen")
    add_includedirs("../RangeBase/include")
    add_includedirs("../RangeModel/include")

    add_files("*.cpp","TestRangeBase/*.cpp","TestRangeModel/*.cpp")
    add_headerfiles("TestRangeBase/*.h","TestRangeModel/*.h")
    
    add_frameworks("QtGui","QtTest")
    -- openmp
    add_rules("c++.openmp")
    add_packages("libomp")
