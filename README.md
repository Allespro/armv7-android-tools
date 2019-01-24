# armv7-android-tools
armv7 android terminal apps
# How install:
Open a command terminal, either adb or an android terminal emulator. Elevate into super user by typing
**su**
Mount /system directory in read-write mode. By default /system is mounted in read-only mode. You cannot write anything in this mode.
**mount -o remount,rw /system**
Push the file into your /system/bin directory. You can either copy it using a file manager or by using adb (Android Debug Bridge) by elevating adb or a shell:
**cp (path to bash executable) /system/bin**
CD to system/bin ditectory
**cd /system/bin**
Change the permissions of bash executable to allow execution by any user and modification by super user (root).
**chmod 0755 (executable)**
