# turn keyboard backlight on
xset led on

EXTERNAL_MONITOR="DP-3"
INTERNAL_MONITOR="eDP-1"

# turn off laptop monitor
xrandr | grep $EXTERNAL_MONITOR | grep "disconnected"
if [ $? -ne 0 ]; then
  exec xrandr --output $INTERNAL_MONITOR --off
fi
  
