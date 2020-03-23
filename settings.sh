###################################################
# Configuration for ServerStart.sh and FTBInstall.sh
#
# TODO:
# * updates for new mojang repositories
# * create settings-local.sh automatically if missing
# * document settings-local.sh creation and usage

###################################################
# Pack specific settings
# Only edit this section if you know what you are doing

export MCVER="1.12.2"
export JARFILE="minecraft_server.${MCVER}.jar"
export LAUNCHWRAPPERVERSION="1.12"
export LAUNCHWRAPPER="net/minecraft/launchwrapper/${LAUNCHWRAPPERVERSION}/launchwrapper-${LAUNCHWRAPPERVERSION}.jar"
export FORGEJAR="forge-1.12.2-14.23.5.2847-universal.jar"

###################################################
# Default arguments for JVM

## Copy following lines into settings-local.sh to create local config file which overrides default settings given here
export JAVACMD="java"
export MAX_RAM="24576M"       # -Xmx
#export JAVA_PARAMETERS="-XX:+UseParNewGC -XX:+CMSIncrementalPacing -XX:+CMSClassUnloadingEnabled -XX:ParallelGCThreads=16 -XX:MinHeapFreeRatio=5 -XX:MaxHeapFreeRatio=10"
export JAVA_PARAMETERS="-XX:+CMSIncrementalPacing -XX:+CMSClassUnloadingEnabled -XX:ParallelGCThreads=16 -XX:MinHeapFreeRatio=5 -XX:MaxHeapFreeRatio=10 -XX:+UseG1GC -XX:+UnlockExperimentalVMOptions -XX:MaxGCPauseMillis=100 -XX:+DisableExplicitGC -XX:TargetSurvivorRatio=90 -XX:G1NewSizePercent=50 -XX:G1MaxNewSizePercent=80 -XX:G1MixedGCLiveThresholdPercent=35 -XX:+AlwaysPreTouch -XX:+ParallelRefProcEnabled"
