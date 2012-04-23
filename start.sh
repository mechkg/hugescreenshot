mkdir /tmp/xvfb_buf
Xvfb -ac :1 -fbdir /tmp/xvfb_buf -screen 0 4096x4096x24 -dpi 300 &
sleep 2
x11vnc -scale .25 -display :1 &
sleep 2
vncviewer localhost :0 &
