add_rules("mode.debug", "mode.release")

target("RangeBase")
    add_rules("qt.static")
    add_defines("RANGEBASE_LIBRARY")
    add_includedirs("include")
    add_files("src/*.cpp","include/*.h")
    add_headerfiles("include/*.h")
    add_frameworks("QtCore","QtGui")
