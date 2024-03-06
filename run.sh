
LOGNAME=`date +"%Y-%m-%d-%H-%M-%S"`
mix run ./example.ex |tee log${LOGNAME}.txt 2>&1
