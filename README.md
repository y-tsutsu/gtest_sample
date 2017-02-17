# 環境

* MinGWがインストール済み
* gitがインストール済み
* cmakeがインストール済み

# Git Clone

```
> git clone https://github.com/y-tsutsu/gtest_sample.git
> cd gtest_sample
```

## 階層

gtest_sample/  
├ googletest/　gtest（別途Git Clone & Build）  
├ target/　　　テストターゲット  
├ test/　　　　テストコードサンプル  

# gtestのGit Clone & Build

```
> git clone https://github.com/google/googletest.git
> cd googletest
> git checkout release-1.8.0
> cd googletest
> mkdir build
> cd build
> cmake -G "MinGW Makefiles" ..
> mingw32-make.exe CXX_FLAGS="-DGTEST_HAS_PTHREAD=0"
> cd ..\..\..\
```

※pthread関連でコンパイルエラーとなったので無効化しています．

# サンプルテストの実行

```
> cd test
> run_test.bat
```

## 実行例

```
Running main() from gtest_main.cc
[==========] Running 4 tests from 1 test case.
[----------] Global test environment set-up.
[----------] 4 tests from AddTest
[ RUN      ] AddTest.PositiveNumber
[       OK ] AddTest.PositiveNumber (0 ms)
[ RUN      ] AddTest.NegativeNumber
[       OK ] AddTest.NegativeNumber (0 ms)
[ RUN      ] AddTest.ZeroNumber
[       OK ] AddTest.ZeroNumber (0 ms)
[ RUN      ] AddTest.PositiveAndNegativeNumber
[       OK ] AddTest.PositiveAndNegativeNumber (0 ms)
[----------] 4 tests from AddTest (104 ms total)

[----------] Global test environment tear-down
[==========] 4 tests from 1 test case ran. (190 ms total)
[  PASSED  ] 4 tests.
```
