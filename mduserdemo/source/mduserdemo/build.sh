#!/bin/sh

g++ -I ../femasmduserapi/ -g -o test ../femasmduserapi/libUSTPmduserapi64.so MsClient.cpp USTPMDClient.cpp USTPMDHandler.cpp  profile.cpp 


