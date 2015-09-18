#!/bin/bash
echo "---- Environment ----"
env
echo "---------------------"
echo /bin/sed -i -e "s/INFLUXSERVER/${INFLUX_PORT_8086_TCP_ADDR}/" -e "s/INFLUXSERVERPORT/${INFLUX_PORT_8086_TCP_PORT}/" -e "s/FOXDENDB/${INFLUX_ENV_PRE_CREATE_DB}/" /etc/nginx/nginx.conf 
/bin/sed -i -e "s/INFLUXSERVER/${INFLUX_PORT_8086_TCP_ADDR}/" -e "s/INFLUXSERVERPORT/${INFLUX_PORT_8086_TCP_PORT}/" -e "s/FOXDENDB/${INFLUX_ENV_PRE_CREATE_DB}/" /etc/nginx/nginx.conf 

nginx
