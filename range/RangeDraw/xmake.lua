add_rules("mode.debug", "mode.release")

target("RangeDraw")
    add_rules("qt.static")
    add_defines("RANGEDRAW_LIBRARY")
    add_includedirs("include")
    add_files("src/*.cpp","include/*.h")
    add_headerfiles("include/*.h")
    add_frameworks("QtCore","QtGui")
