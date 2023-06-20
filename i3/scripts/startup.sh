# turn keyboard backlight on
xset led on

EXTERNAL_MONITOR="DP-3"
INTERNAL_MONITOR="eDP-1"

xrandr | grep $INTERNAL_MONITOR | grep "connected"
if [ $? -eq 0 ]; then
  exec xrandr --output $INTERNAL_MONITOR --off
  echo "hello world"
fi
  
