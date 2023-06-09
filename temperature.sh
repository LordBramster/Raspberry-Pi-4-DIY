#!/bin/bash
echo "Running stats on $HOSTNAME..."
sleep 1
echo ""
vcgencmd get_throttled
vcgencmd measure_volts
vcgencmd get_mem arm
vcgencmd get_mem gpu
sleep 1
echo ""
echo "Running Temps for 15 seconds ..."
for i in {1..15}
do
  echo "run $i:"; vcgencmd measure_temp
  sleep 1
done
echo ""
echo "Done."
