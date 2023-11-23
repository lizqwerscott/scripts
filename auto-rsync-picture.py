import os
import time

def rsync():
    os.system("rsync ysc@192.168.2.102:/home/ysc/detect_robot_all/a.png .")

if __name__ == "__main__":

    while True:
        print("rsync")
        rsync()
        time.sleep(3)
