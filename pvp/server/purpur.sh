#!/bin/bash

while [ true ]; do
    # java --add-modules=jdk.incubator.vector -Xms8096M -Xmx8096M -XX:+UseG1GC -XX:G1HeapRegionSize=4M -XX:+UnlockExperimentalVMOptions -XX:+ParallelRefProcEnabled -XX:+AlwaysPreTouch -XX:MaxInlineLevel=15 -jar purpur.jar --nogui
    taskset -c 0,1,2,3 java --add-modules=jdk.incubator.vector -Xms8192M -Xmx8192M -XX:+UseG1GC -XX:G1HeapRegionSize=8M -XX:+UnlockExperimentalVMOptions -XX:+ParallelRefProcEnabled -XX:+AlwaysPreTouch -XX:MaxInlineLevel=15 -XX:MaxGCPauseMillis=100 -XX:G1NewSizePercent=20 -XX:G1MaxNewSizePercent=60 -XX:InitiatingHeapOccupancyPercent=45 -XX:G1ReservePercent=15 -Xlog:gc*:logs/gc.log -jar purpur.jar --nogui


    echo Server restarting...
    echo Press CTRL + C to stop.
done