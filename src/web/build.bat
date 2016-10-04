set SRC=main.cpp ../libs/minimp3/minimp3.cpp ../libs/stb_vorbis/stb_vorbis.c
call em++ %SRC% -O2 -s ASSERTIONS=1 -Wno-deprecated-register --llvm-opts 2 --closure 2 -std=c++11 -o OpenLara.js --preload-file ./LEVEL2_DEMO.PHD -I..\
gzip.exe -9 -f OpenLara.data OpenLara.js OpenLara.js.mem