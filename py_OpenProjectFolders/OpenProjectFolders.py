'''
Name:           Open Project Folders
Description:    Open folders of corresponding project
Author:         Deng jingwei
Version:        1.0
History:        1.0 (20190322) - First version. To convert the batch script into python script.
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

    #TODO: Function: Open folders which based on whether the folder exsits
    def open_folder(path):
        if os.path.exists(path):
            os.system("explorer.exe %s" % path)
        esle :
    open_folder(path_main)

    #TODO: Open folers in loop
    for path in variable:
        pass

if __name__ == "__main__":
    main()
