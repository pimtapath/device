#!/vendor/bin/sh

if [ -d /sdcard/electron ]; then
    echo 'electron' > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
else
    echo 'interactive' > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
fi

# gov=`cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor`
#if [ $gov = "electron" ]; then
#    echo '1958400' > /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq
#fi

if [ -d /sdcard/freqdown ]; then
    echo '1958400' > /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq
fi
