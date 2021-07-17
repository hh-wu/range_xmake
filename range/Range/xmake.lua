add_rules("mode.debug", "mode.release")

add_requires("libomp", {optional = true})

if is_plat("windows") then 
    add_requires("vcpkg::ffmpeg", {alias="ffmpeg"})
else
    add_requires("ffmpeg")
end 

target("Range")
    add_rules("qt.widgetapp")
    add_deps("RangeSolverLib")

    add_headerfiles("src/*.h")
    add_files("src/*.cpp")
    add_files("src/*.h|first_run_dialog.h|video_output.h")
    add_files(("*.qrc"))

    add_includedirs("../TetGen")
    add_includedirs("../RangeBase/include")
    add_includedirs("../RangeSolverLib/include")
    add_includedirs("../RangeModel/include")

    -- openmp
    add_rules("c++.openmp")
    add_packages("libomp")

    if is_plat("macosx") then
        add_frameworks("Foundation", "CoreFoundation", "CoreGraphics", "AppKit", "OpenCL")
    elseif is_plat("linux") then
        add_syslinks("pthread", "dl")
    elseif is_plat("windows") then
        add_syslinks("strmiids", "mfplat", "mfuuid","Ws2_32", "Secur32", "Bcrypt")
    end

    add_packages("ffmpeg")
    add_links("avfilter", "avdevice", "avformat", "avcodec", "swscale", "swresample", "avutil")
    
    -- Qt framework
    add_frameworks("QtCore","QtGui","QtNetwork","QtPrintSupport","QtOpenGL")