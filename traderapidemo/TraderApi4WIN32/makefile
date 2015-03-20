.SUFFIXES:  .c .cpp .o .obj .a .lib

CPP=cl -nologo -GX
LINK=link -nologo
LIB32=link -lib -nologo
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
DEFINES=-DWINDOWS -DWIN32 -DMSVC
target=TraderApi.exe

DEBUG_DEFINE=-DDEBUG -DDEBUG_LOG

APPEND_CPPFLAGS=-nologo -GX -MTd -Od -Yd -Gm -ZI -FD

PROFILE_CPPFLAGS=

WARNING_CPPFLAGS=-W3

CPPFLAGS=     $(APPEND_CPPFLAGS) $(PROFILE_CPPFLAGS) $(WARNING_CPPFLAGS) $(DEBUG_DEFINE) $(DEFINES)

LIBS= kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib wsock32.lib USTPtraderapi.lib

DEBUG_LDFLAGS=/DEBUG

MAP_LDFLAGS=

PROFILE_LDFLAGS=

WARNING_LDFLAGS=/WARN:2

LDFLAGS=    /FIXED:NO $(MAP_LDFLAGS) $(DEBUG_LDFLAGS) $(PROFILE_LDFLAGS) $(WARNING_LDFLAGS)

LIBARFLAGS=      $(MAP_LDFLAGS) $(DEBUG_LDFLAGS) $(PROFILE_LDFLAGS)

DLLARFLAGS=    /dll $(MAP_LDFLAGS) $(DEBUG_LDFLAGS) $(PROFILE_LDFLAGS)


all: makefile code

code: clearoutput $(target)

makefile: .\package.des  testapi.prj
	amake testapi.prj
	@$(ECHO) rerun nmake
	@exit /b 1

clearoutput:
	@$(ECHO) Compiling... > output

TraderApi_obj= .\testapi.obj  .\TraderSpi.obj  .\PublicFuncs.obj 
TraderApi_include=
TraderApi_includedir=-I.\.

all_objs= $(TraderApi_obj) 
all_libs= $(TraderApi_lib) 
INCLUDEDIR= $(TraderApi_includedir) 

.\testapi.obj: .\testapi.cpp $(TraderApi_include)  

.\TraderSpi.obj: .\TraderSpi.cpp $(TraderApi_include)  

.\PublicFuncs.obj: .\PublicFuncs.cpp $(TraderApi_include)  



$(target): $(all_objs)
	$(LINK) $(LDFLAGS) -out:$@ $(all_objs) $(all_libs) $(LIBS) >> output


clean:
	-$(DEL) $(TraderApi_obj)
	-$(DEL) $(target)

pump:  

