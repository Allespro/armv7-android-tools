# armv7-android-tools
armv7 android terminal apps
# How install:
Open a command terminal, either adb or an android terminal emulator. Elevate into super user by typing
<pre>
su
</pre>
Mount /system directory in read-write mode. By default /system is mounted in read-only mode. You cannot write anything in this mode.
<pre>
mount -o remount,rw /system
</pre>
Push the file into your /system/bin directory. You can either copy it using a file manager or by using adb (Android Debug Bridge) by elevating adb or a shell:
<pre>
cp (path to bash executable) /system/bin
</pre>
CD to system/bin ditectory
<pre>
cd /system/bin
</pre>
Change the permissions of bash executable to allow execution by any user and modification by super user (root).
<pre>
chmod 0755 (executable)
</pre>
