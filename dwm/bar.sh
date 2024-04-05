#!/bin/bash

battery(){
  printf "BAT:"
  cmd="$(acpi | cut -d ',' -f2 | cut -d '%' -f1)"
  a=$(( cmd/10 ))
  b=$(( 10 - $a ))
  cmd="$cmd%%"
  if [[ "$(cat /sys/class/power_supply/BAT1/status)" == "Charging" ]]
    then printf " "
  elif [[ "$(cat /sys/class/power_supply/BAT1/status)" == "Not Charging" ]]
    then printf " 󰁅"
  fi
  printf "$cmd "
  printf "["
  until [ $a -lt 1 ]; do
    printf ""
    a=$(( a-1 ))
  done
  until [ $b -lt 1 ]; do
    printf " "
    b=$(( b-1 ))
  done
  printf "] "
}

volume(){
  printf "VOL: "
  cmd="$(pactl get-sink-volume @DEFAULT_SINK@ | cut -d '/' -f2 | sed -n '1p' | awk '{print $1}' | cut -d% -f1)"
  a=$(( cmd/10 ))
  if [[ "$cmd" -gt "100" ]]
    then a=10
  fi
  b=$(( 10 - $a ))
  if [[ $cmd == "0" ]]; then
    cmd=" 0"
  fi
  if [[ $cmd == "5" ]]; then
    cmd=" 5"
  fi
  cmd="$cmd%%"
  if [[ "$(pactl get-sink-mute @DEFAULT_SINK@)" == "Mute: yes" ]]; then
    printf "   "
    printf "["
    printf "   muted   "
    printf "] "
  else
    printf "$cmd "
    printf "["
    until [ $a -lt 1 ]; do
      printf ""
      a=$(( a-1 ))
    done
    until [ $b -lt 1 ]; do
      printf " "
      b=$(( b-1 ))
    done
    printf " ] "
  fi
}

brightness(){
  cmd="$(sudo ybacklight -get | cut -d. -f1)"
  a=$(( cmd/10 ))
  b=$(( 10 - $a ))
  cmd="$cmd%%"
  printf "$cmd "
  printf "["
  until [ $a -lt 1 ]; do
    printf ""
    a=$(( a-1 ))
  done
  until [ $b -lt 1 ]; do
    printf " "
    b=$(( b-1 ))
  done
  printf " ] "
}

ram(){
  printf "RAM: "
  cmd=$(free -m | sed -n "2p" | awk '{usage=($3/$2)*100} END {print usage}' | sed 's/\([^.]*\...\).*/\1/g')
  printf "$cmd%% | "
}

cpu(){
  printf "CPU: "
  cmd="$(grep 'cpu ' /proc/stat | awk '{usage=($2+$4)*100/($2+$4+$5)} END {print usage "%"}' | sed 's/\([^.]*\...\).*/\1/g')"
  printf "$cmd%%"
}

xsetroot -name "$(volume);$(ram)$(cpu);$(battery)"
