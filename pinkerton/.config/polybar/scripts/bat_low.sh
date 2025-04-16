status=$(sudo /bin/cat /sys/class/power_supply/BAT1/status)
capacity=$(sudo /bin/cat /sys/class/power_supply/BAT1/capacity)

if [ "$status" = "Discharging" ]; then
  if [ "$capacity" -gt 97 ]; then
    echo "󱈏 100%"
  elif [ "$capacity" -gt 74 ]; then
    echo "󰂀 $capacity%"
  elif [ "$capacity" -gt 49 ]; then
    echo "󰁾  $capacity%"
  elif [ "$capacity" -gt 24 ]; then
    echo "󰁼 $capacity%"
  else
    notify-send -u critical "  BATERIA BAJA"
    echo "󰁻 $capacity%"
  fi
else
  echo "󰂄 $capacity"
fi
