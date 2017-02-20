SET test_file=myadd_test.cpp
SET target_file=..\target\myadd.cpp
call g++ %test_file% %target_file% ^
-I..\googletest\googletest\include ^
-I..\target ^
-L..\googletest\googletest\build ^
-lgtest_main ^
-lgtest ^
-otest.exe
call test.exe
call del test.exe
