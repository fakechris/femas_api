.SUFFIXES:  .c .cpp .o .obj .a .lib

CPP=cl
LINK=link
LIB32=lib 
PREP=cl -nologo -EP
PUMP=pump
COPY=copy /y
DEL=del
MAKE=nmake
ECHO=echo

.cpp.obj:
	$(CPP) $(CPPFLAGS) $(INCLUDEDIR) -c $< >> output
	move $(@F) $(@D)

ISLIB=N
DEFINES=-DWINDOWS -DMSVC
target=.\\mduserdemo.exe

DEBUG_DEFINE=-DDEBUG -DDEBUG_LOG

APPEND_CPPFLAGS=-nologo -EHsc -MTd -Od -Gm -ZI -FD

PROFILE_CPPFLAGS=

WARNING_CPPFLAGS=-W3

CPPFLAGS= -DDEBUG_NOT_LOG     $(APPEND_CPPFLAGS) $(PROFILE_CPPFLAGS) $(WARNING_CPPFLAGS) $(DEBUG_DEFINE) $(DEFINES)

LIBS= kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib wsock32.lib     

DEBUG_LDFLAGS=/DEBUG

MAP_LDFLAGS=

PROFILE_LDFLAGS=

WARNING_LDFLAGS=/WARN:2

LDFLAGS=     -nologo /FIXED:NO $(MAP_LDFLAGS) $(DEBUG_LDFLAGS) $(PROFILE_LDFLAGS) $(WARNING_LDFLAGS)

LIBARFLAGS=     -nologo $(MAP_LDFLAGS) $(DEBUG_LDFLAGS) $(PROFILE_LDFLAGS)

DLLARFLAGS=     -nologo /dll $(MAP_LDFLAGS) $(DEBUG_LDFLAGS) $(PROFILE_LDFLAGS)


all: code

code: clearoutput $(target)

clearoutput:
	@$(ECHO) Compiling... > output

femasmduserapi_obj=
femasmduserapi_lib=/libpath:..\..\source\femasmduserapi\ USTPmduserapi.lib
femasmduserapi_include= ..\..\source\femasmduserapi\USTPFtdcMduserApi.h  ..\..\source\femasmduserapi\USTPFtdcUserApiDataType.h  ..\..\source\femasmduserapi\USTPFtdcUserApiStruct.h 
femasmduserapi_includedir=-I..\..\source\femasmduserapi\.
mduserdemo_obj= ..\..\source\mduserdemo\MsClient.obj  ..\..\source\mduserdemo\USTPMDHandler.obj  ..\..\source\mduserdemo\USTPMDClient.obj  ..\..\source\mduserdemo\profile.obj 
mduserdemo_include= ..\..\source\mduserdemo\USTPMDHandler.h  ..\..\source\mduserdemo\USTPMDClient.h  ..\..\source\mduserdemo\profile.h 
mduserdemo_includedir=-I..\..\source\mduserdemo\.

all_objs= $(femasmduserapi_obj)  $(mduserdemo_obj) 
all_libs= $(femasmduserapi_lib)  $(mduserdemo_lib) 
INCLUDEDIR= $(femasmduserapi_includedir)  $(mduserdemo_includedir) 

..\..\source\mduserdemo\MsClient.obj: ..\..\source\mduserdemo\MsClient.cpp $(mduserdemo_include)  
..\..\source\mduserdemo\USTPMDHandler.obj: ..\..\source\mduserdemo\USTPMDHandler.cpp $(mduserdemo_include)  
..\..\source\mduserdemo\USTPMDClient.obj: ..\..\source\mduserdemo\USTPMDClient.cpp $(mduserdemo_include)  
..\..\source\mduserdemo\profile.obj: ..\..\source\mduserdemo\profile.cpp $(mduserdemo_include)  

copytargetall= 
pumptargetall= 

$(target): $(all_objs)
	$(LINK) $(LDFLAGS) -out:$@ $(all_objs) $(all_libs) $(LIBS) >> output


clean:
	-$(DEL) $(femasmduserapi_obj)
	-$(DEL) $(mduserdemo_obj)
	-$(DEL) $(copytargetall)
	-$(DEL) $(pumptargetall)
	-$(DEL) $(target)

pump: $(pumptargetall)

