# Microsoft Developer Studio Project File - Name="TraderApi" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Console Application" 0x0103

CFG=TraderApi - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "TraderApi.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "TraderApi.mak" CFG="TraderApi - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "TraderApi - Win32 Release" (based on "Win32 (x86) Console Application")
!MESSAGE "TraderApi - Win32 Debug" (based on "Win32 (x86) Console Application")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "TraderApi - Win32 Release"

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
# ADD BASE CPP /nologo /MT /W3 /GX /O2 /D "WINDOWS" /D "WIN32" /D "MSVC" /FD -GF /c
# ADD CPP /nologo /MT /W3 /GX /O2 /I ".\." /D "WINDOWS" /D "WIN32" /D "MSVC" /FD -GF /c
# ADD BASE RSC /l 0x804 /d "NDEBUG"
# ADD RSC /l 0x804 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib wsock32.lib USTPtraderapi.lib /nologo /machine:IX86 /FIXED:NO /WARN:2
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib wsock32.lib USTPtraderapi.lib /nologo /machine:IX86 /out:"TraderApi.exe" /FIXED:NO /WARN:2

!ELSEIF  "$(CFG)" == "TraderApi - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MTd /W3 /Gm /GX /ZI /Od /D "DEBUG" /D "DEBUG_LOG" /D "WINDOWS" /D "WIN32" /D "MSVC" /FD -Yd /c
# ADD CPP /nologo /MTd /W3 /Gm /GX /ZI /Od /I ".\." /D "DEBUG" /D "DEBUG_LOG" /D "WINDOWS" /D "WIN32" /D "MSVC" /FD -Yd /c
# ADD BASE RSC /l 0x804 /d "_DEBUG"
# ADD RSC /l 0x804 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib wsock32.lib USTPtraderapi.lib /nologo /machine:IX86 /FIXED:NO /WARN:2
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib wsock32.lib USTPtraderapi.lib /nologo /machine:IX86 /out:"TraderApi.exe" /FIXED:NO /WARN:2

!ENDIF 

# Begin Target

# Name "TraderApi - Win32 Release"
# Name "TraderApi - Win32 Debug"
# Begin Group "TraderApi"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\PublicFuncs.cpp
# End Source File
# Begin Source File

SOURCE=.\testapi.cpp
# End Source File
# Begin Source File

SOURCE=.\TraderSpi.cpp
# End Source File
# End Group
# End Target
# End Project
