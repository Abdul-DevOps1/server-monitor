#!/bin/bash
 
LOGFILE="health.log"

echo "==== Server Health Report ====" > $LOGFILE

date >> $LOGFILE

echo "" >> $LOGFILE

echo "CPU Usage:" >> $LOGFILE
top -bn1 | grep "Cpu(s)" >> $LOGFILE

echo "" >> $LOGFILE
echo "Memory Usage:" >> $LOGFILE
free -h >> $LOGFILE

echo "" >> $LOGFILE
echo "Disk Usage:" >> $LOGFILE
df -h >> $LOGFILE

echo "" >> $LOGFILE
echo "Network Test:" >> $LOGFILE

ping -c 2 google.com >> $LOGFILE

echo "Report Generated Successfully"

