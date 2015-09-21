#!/bin/bash
echo "---- Environment ----"
env
echo "---------------------"
echo /bin/sed -i -e "s/INFLUXSERVER/${INFLUX_PORT_8086_TCP_ADDR}/g" -e "s/INFLUXSERVERPORT/${INFLUX_PORT_8086_TCP_PORT}/g" -e "s/FOXDENDB/${INFLUX_ENV_PRE_CREATE_DB}/g" /etc/nginx/nginx.conf 
/bin/sed -i -e "s/INFLUXSERVER/${INFLUX_PORT_8086_TCP_ADDR}/" -e "s/INFLUXSERVERPORT/${INFLUX_PORT_8086_TCP_PORT}/" -e "s/FOXDENDB/${INFLUX_ENV_PRE_CREATE_DB}/" /etc/nginx/nginx.conf 

echo /bin/sed -i -e "s/INFLUXADMINSERVER/${INFLUX_PORT_8083_TCP_ADDR}/" -e "s/INFLUXADMINSERVERPORT/${INFLUX_PORT_8083_TCP_PORT}/" /etc/nginx/nginx.conf 
/bin/sed -i -e "s/INFLUXADMINSERVER/${INFLUX_PORT_8083_TCP_ADDR}/" -e "s/INFLUXADMINSERVERPORT/${INFLUX_PORT_8083_TCP_PORT}/" /etc/nginx/nginx.conf 

echo /bin/sed -i -e "s/WOUSER/${WO_USER}/" -e "s/WOPASS/${WO_PASS}/" /etc/nginx/nginx.conf 
/bin/sed -i -e "s/WOUSER/${WO_USER}/" -e "s/WOPASS/${WO_PASS}/" /etc/nginx/nginx.conf 

nginx
