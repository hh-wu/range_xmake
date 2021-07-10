add_rules("mode.debug", "mode.release")

add_requires("libomp", {optional = true})
add_requires("vcpkg::ffmpeg")
target("Range")
    add_rules("qt.widgetapp")
    add_deps("RangeSolverLib")

    add_headerfiles("src/*.h")
    add_files("src/*.cpp")
    add_files("src/*.h|first_run_dialog.h|video_output.h")

    add_includedirs("..")
    add_includedirs("../TetGen")
    add_includedirs("../RangeBase/include")
    add_includedirs("../RangeSolverLib/include")
    add_includedirs("../RangeModel/include")






    -- openmp
    add_rules("c++.openmp")
    add_packages("libomp")


    add_packages("vcpkg::ffmpeg","vcpkg::avutil","vcpkg::avcodec","vcpkg::avformat")
    add_links("avfilter", "avdevice", "avformat", "avcodec", "swscale", "swresample", "avutil")

    -- Qt framework
    add_frameworks("QtCore","QtGui","QtNetwork","QtPrintSupport")
    

    -- add_links("TetGen","RangeBase","RangeModel","RangeSolverLib")