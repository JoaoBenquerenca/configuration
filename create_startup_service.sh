# run with sudo

# permission to execute startup script
chmod a+x startup.sh

# create service 
SERVICE_FILE="/etc/systemd/system/StartupService.service"

echo -e "[Unit]\nDescription=Startup Script\n" > $SERVICE_FILE

echo -e "[Service]\nExecStart=$HOME/startup.sh\n" >> $SERVICE_FILE

echo -e "[Install]\nWantedBy=default.target\n" >> $SERVICE_FILE

chmod 644 $SERVICE_FILE

# enable service
SERVICE_NAME=${SERVICE_FILE: -22}
systemctl enable $SERVICE_NAME
