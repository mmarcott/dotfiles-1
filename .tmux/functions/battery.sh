#!/bin/bash

HEART='♥ '

if [[ `uname` == 'Linux' ]]; then
  current_charge=$(cat /sys/class/power_supply/BAT0/charge_now)
  total_charge=$(cat /sys/class/power_supply/BAT0/charge_full)
else
  battery_info=`ioreg -rc AppleSmartBattery`
  current_charge=$(echo $battery_info | grep -o '"CurrentCapacity" = [0-9]\+' | awk '{print $3}')
  total_charge=$(echo $battery_info | grep -o '"MaxCapacity" = [0-9]\+' | awk '{print $3}')
fi

charged_slots=$(echo "(($current_charge/$total_charge)*5)+1" | bc -l | cut -d '.' -f 1)
if [[ $charged_slots -gt 5 ]]; then
  charged_slots=5
fi

printf '#[fg=colour9]'
for i in `seq 1 $charged_slots`; do printf "$HEART"; done

if [[ $charged_slots -lt 5 ]]; then
  printf '#[fg=white]'
  for i in `seq 1 $(echo "5-$charged_slots" | bc)`; do printf "$HEART"; done
fi
