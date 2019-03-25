goto comment
  Name:         Open Project Folder
  Description:  Open folders of corresponding project
  Author:       Deng jingwei
  Date:         2019.01.01
  History:
    1.0 (20190101) - First version.
    2.0 (20190311) - Open 'TodayDate' JPEG folder.
    3.0 (20190314) - If 'TodayDate' JPEG folder, it would create the folder.
                   - Use function to open folders
    4.0 (20190318) - Optimize function for easily reading and coding.
:comment

@echo off

::设置项目ID、设计阶段/Set up Project ID & Design Stage
SET Project_ID=18213
SET Project_Stage=UA
SET PATH_MAIN=Q:\Project\%Project_ID%\%Project_Stage%

::获取今天日期/Get the Date of today
SET TodayDate=%date:~3,4%%date:~8,2%%date:~11,2%

echo Today is %TodayDate%. Have a good day!
echo Opening Folders of %Project_ID%

if 1 == 1 (
  call :main
)
::退出批处理程序
exit
::暂停，用于调试程序
::pause

::------------------------------------------------------------------
::主函数
:main
  ::调用函数openFolders, jpegFolderExist
  call :openFolders
  call :jpegFolderExist
goto:eof

::函数：依次打开各个项目工作文件夹/Function: Open every folder of the project
:openFolders
  SET PATH_XREF=%PATH_MAIN%\CAD\XREF
  SET PATH_SHEET=%PATH_MAIN%\CAD\SHEET
  SET PATH_EPS=%PATH_MAIN%\DESIGN\EPS
  SET PATH_PSD=%PATH_MAIN%\DESIGN\PSD
  SET PATH_PPT=%PATH_MAIN%\DESIGN\PPT
  SET PATH_TABULATION=%PATH_MAIN%\ADMIN\TABULATION
  start "" "%PATH_XREF%"
  start "" "%PATH_SHEET%"
  start "" "%PATH_EPS%"
  start "" "%PATH_PSD%"
  start "" "%PATH_PPT%"
  start "" "%PATH_TABULATION%"
goto:eof

::函数：判断“今日”的JPEG文件夹的存在，如果不存在就新建文件夹。/Function: If the JPEG folder exist, open it. If not, create it.
:jpegFolderExist
  SET PATH_JPEG=%PATH_MAIN%\DESIGN\JPEG\Progress\%TodayDate%
  if exist "%PATH_JPEG%" (
    start "" "%PATH_JPEG%"
  ) else (
    echo TodayDate JPEG Folder does not exist. It is making the folder.
    ::md "%PATH_JPEG%"
    echo TodayDate JPEG Folder has been created.
    ::start "" "%PATH_JPEG%"
  )
goto:eof
