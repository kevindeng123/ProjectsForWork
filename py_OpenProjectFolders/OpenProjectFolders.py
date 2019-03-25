'''
Name:           Open Project Folders
Description:    Open folders of corresponding project
Author:         Deng jingwei
Version:        1.0
History:        1.0 (20190322) - First version. To convert the batch script into python script.
                1.1 (20190325) - Create a list of each child path.
'''
#Import packages which will be used latter.
import os
import time

def main():
    #Set project ID and stage
    project_id = '18213'
    project_stage = 'UA'

    #Create main path
    path_main = os.path.join('Q:\\', 'Project', project_id, project_stage)

    #Get the date of today
    today = time.strftime("%Y%m%d", time.localtime())
    print("Today is %s. Have a good day!" % today)

    #TODO: Create a list of realtive chilren path
    path_list = ['CAD\\XREF', 'CAD\\SHEET', 'DESIGN\\EPS', 'DESIGN\\PSD', 'DESIGN\\PPT', 'ADMIN\\TABULATION', 'DESIGN\\JPEG\\Progress\\%s' % today]

    #Function: Open folders which based on whether the folder exsits
    def open_folder(path):
        if os.path.exists(path):
            os.system("explorer.exe %s" % path)
        else:
            os.mkdir(path)
            os.system("explorer.exe %s" % path)

    #TODO: Open folers in loop
    for child_path in path_list:
        abs_child_path = os.path.join(path_main, child_path)
        open_folder(abs_child_path)
        pass

if __name__ == "__main__":
    main()
