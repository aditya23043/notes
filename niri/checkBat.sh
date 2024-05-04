#/bin/bash

# kill $(ps aux | grep /home/adi/.config/niri/checkBat.sh | grep tty | awk '{print $2}')


while true; do

  bat=$(acpi | cut -d, -f2 | cut -d% -f1 | awk '{print $1}')

  if [[ $bat < 20 ]]; then
    notify-send "Battery: $bat%" -t 0
    notify-send "LOW BATTERY!" -t 0
  else
    notify-send "Battery: $bat%"
    notify-send "$(acpi | cut -d, -f3)"
  fi

  sleep 10m

done
