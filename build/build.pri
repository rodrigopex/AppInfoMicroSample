# Creating the applicationinfo.hpp file
info.target = applicationinfo.hpp
win32: info.commands = "python.exe ..\build\build_counter.py"
else:  info.commands = "python  ../build/build_counter.py"

PRE_TARGETDEPS += applicationinfo.hpp
QMAKE_EXTRA_TARGETS += info
