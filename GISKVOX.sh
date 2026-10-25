#!/system/bin/sh
#-------------------------------------------------------------------------------------------------------
echo "#.GISKVOX"
echo "#.dev = GISKTUNE"
echo "#.More this script info =https://chat.whatsapp.com/FXKWczPVUCgL8hFIueXSIT?s=cl&p=a&mlu=4&ilr=4"
sleep 5

#-------------------------------------------------------------------------------
#------------------------
echo "#1.Overclocking"
setprop debug.sf.hw 1
setprop debug.egl.hw 1
setprop sys.use_fifo_ui 1
setprop persist.sys.use_16b_accuracy true
setprop debug.performance.tuning 1
setprop persist.sys.NV_FPSLIMIT 280
setprop debug.gr.swapinterval 0
setprop persist.sys.composition.type gpu
setprop video.accelerate.hw 1
service call SurfaceFlinger 1008 i32 1

#-------------------------------------------------------------------------------
#------------------------
echo "#.This version = 4.0

#-------------------------------------------------------------------------------
#------------------------
echo "#2.Touching"
settings put system pointer_speed 7
settings put global touch_exploration_enable 0
setprop windowsmgr.max_events_per_sec 300
setprop view.touch_slop 2

#-------------------------------------------------------------------------------
#------------------------
echo "#.Good news this script will update every 25th"

#-------------------------------------------------------------------------------
#------------------------
echo "#3.Internet and vpn"
settings put global wifi_scan_always_enabled 0
settings put global wifi_sleep_policy 2
settings put global wifi_power_save 0
setprop net.tcp.buffersize.default 524288,1048576,2097152,262144,524288,1048576
setprop net.tcp.buffersize.wifi 524288,1048576,2097152,262144,524288,1048576
setprop net.tcp.buffersize.lte 524288,1048576,2097152,262144,524288,1048576
setprop net.rmnet0.dns1 8.8.8.8
setprop net.rmnet0.dns2 8.8.4.4
setprop net.dns1 8.8.8.8
setprop net.dns2 8.8.4.4

#-------------------------------------------------------------------------------
#------------------------
echo "#.Share and rate this script"

#-------------------------------------------------------------------------------
#------------------------
echo "#4.Ram"
cmd deviceidle force-idle
pm trim-caches 999999999999
sm fstrim
wm size 720x1600
wm density 300

#-------------------------------------------------------------------------------
#------------------------
echo "#.100 person in my whatsapp i will update everyday in 5 day"

#-------------------------------------------------------------------------------
#------------------------
echo "#5.Render vulkan"
setprop debug.hwui.renderer vulkan
setprop debug.renderengine.backend vulkan
setprop debug.hwui.use_buffer_age false
setprop persist.sys.composition.type gpu

#-------------------------------------------------------------------------------
#------------------------
echo "#.This is nice to upgrade your device"
#-------------------------------------------------------------------------------
#------------------------
echo "#6.CPU Governor"
for cpu in /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor; do
    [ -f "$cpu" ] && echo "performance" > "$cpu"
done
setprop logd.logpersistd.enable false
setprop debug.checkjni 0
