#!/bin/bash

HEART='♥'

if [[ `uname` == 'Linux' ]]; then
  current_charge=$(cat /proc/acpi/battery/BAT1/state | grep 'remaining capacity' | awk '{print $3}')
  total_charge=$(cat /proc/acpi/battery/BAT1/info | grep 'last full capacity' | awk '{print $4}')
else
  battery_info=`ioreg -rc AppleSmartBattery`
  current_charge=$(echo $battery_info | grep -o '"CurrentCapacity" = [0-9]\+' | awk '{print $3}')
  total_charge=$(echo $battery_info | grep -o '"MaxCapacity" = [0-9]\+' | awk '{print $3}')
fi

charged_slots=$(echo "(($current_charge/$total_charge)*10)+1" | bc -l | cut -d '.' -f 1)
if [[ $charged_slots -gt 10 ]]; then
  charged_slots=10
fi

printf '#[fg=colour9]'
for i in `seq 1 $charged_slots`; do printf "$HEART"; done

if [[ $charged_slots -lt 10 ]]; then
  printf '#[fg=white]'
  for i in `seq 1 $(echo "10-$charged_slots" | bc)`; do printf "$HEART"; done
fi