# Microsoft Developer Studio Project File - Name="mduserdemo" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Console Application" 0x0103

CFG=mduserdemo - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "mduserdemo.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "mduserdemo.mak" CFG="mduserdemo - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "mduserdemo - Win32 Release" (based on "Win32 (x86) Console Application")
!MESSAGE "mduserdemo - Win32 Debug" (based on "Win32 (x86) Console Application")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "mduserdemo - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Target_Dir ""
# ADD BASE CPP -DDEBUG_NOT_LOG     -nologo -GX -MT -O2 -GF -FD   -W3 -DWINDOWS -DMSVC /c
# ADD CPP -DDEBUG_NOT_LOG     -nologo -GX -MT -O2 -GF -FD   -W3 -DWINDOWS -DMSVC   -I..\..\source\femasmduserapi\. -I..\..\source\mduserdemo\. /c
# ADD BASE RSC /l 0x804 /d "NDEBUG"
# ADD RSC /l 0x804 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib wsock32.lib   /libpath:..\..\source\femasmduserapi USTPmduserapi.lib        -nologo /FIXED:NO     /WARN:2
# ADD LINK32     -nologo /FIXED:NO     /WARN:2 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib wsock32.lib   /libpath:..\..\source\femasmduserapi USTPmduserapi.lib    /out:".\\mduserdemo.exe"

!ELSEIF  "$(CFG)" == "mduserdemo - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Target_Dir ""
# ADD BASE CPP -DDEBUG_NOT_LOG     -nologo -GX -MTd -Od -Yd -Gm -ZI -FD   -W3 -DDEBUG -DDEBUG_LOG -DWINDOWS -DMSVC  /c
# ADD CPP -DDEBUG_NOT_LOG     -nologo -GX -MTd -Od -Yd -Gm -ZI -FD   -W3 -DDEBUG -DDEBUG_LOG -DWINDOWS -DMSVC   -I..\..\source\femasmduserapi\. -I..\..\source\mduserdemo\. /c
# ADD BASE RSC /l 0x804 /d "_DEBUG"
# ADD RSC /l 0x804 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib wsock32.lib   /libpath:..\..\source\femasmduserapi USTPmduserapi.lib        -nologo /FIXED:NO     /DEBUG /WARN:2
# ADD LINK32     -nologo /FIXED:NO     /DEBUG /WARN:2 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib wsock32.lib   /libpath:..\..\source\femasmduserapi USTPmduserapi.lib    /out:".\\mduserdemo.exe"

!ENDIF 

# Begin Target

# Name "mduserdemo - Win32 Release"
# Name "mduserdemo - Win32 Debug"

# Begin Group "femasmduserapi"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\source\femasmduserapi\USTPFtdcMduserApi.h
# End Source File
# Begin Source File

SOURCE=..\..\source\femasmduserapi\USTPFtdcUserApiDataType.h
# End Source File
# Begin Source File

SOURCE=..\..\source\femasmduserapi\USTPFtdcUserApiStruct.h
# End Source File
# End Group

# Begin Group "mduserdemo"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\source\mduserdemo\MsClient.cpp
# End Source File
# Begin Source File

SOURCE=..\..\source\mduserdemo\USTPMDHandler.cpp
# End Source File
# Begin Source File

SOURCE=..\..\source\mduserdemo\USTPMDClient.cpp
# End Source File
# Begin Source File

SOURCE=..\..\source\mduserdemo\profile.cpp
# End Source File
# Begin Source File

SOURCE=..\..\source\mduserdemo\USTPMDHandler.h
# End Source File
# Begin Source File

SOURCE=..\..\source\mduserdemo\USTPMDClient.h
# End Source File
# Begin Source File

SOURCE=..\..\source\mduserdemo\profile.h
# End Source File
# End Group

# End Target
# End Project

