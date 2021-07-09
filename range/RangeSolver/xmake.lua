add_rules("mode.debug", "mode.release")

add_requires("libomp", {optional = true})

target("RangeSolver")
    add_rules("qt.widgetapp")
    add_deps("RangeSolverLib")

    add_includedirs("..")
    add_includedirs("../TetGen")
    add_includedirs("../RangeBase/include")
    add_includedirs("../RangeSolverLib/include")
    add_includedirs("../RangeModel/include")

    add_headerfiles("src/*.h")
    add_files("src/*.cpp","src/*.h")




    -- openmp
    add_rules("c++.openmp")
    add_packages("libomp")



    -- Qt framework
    add_frameworks("QtCore","QtGui","QtNetwork")
    

    -- add_links("TetGen","RangeBase","RangeModel","RangeSolverLib")