#!/bin/bash
echo "---- Environment ----"
env
echo "---------------------"

function run {
  echo "${@}"
  "${@}"
}

run /bin/sed -i \
  -e "s/INFLUX_PORT_8086_TCP_ADDR/${INFLUX_PORT_8086_TCP_ADDR}/g" \
  -e "s/INFLUX_PORT_8086_TCP_PORT/${INFLUX_PORT_8086_TCP_PORT:-8086}/g" \
  -e "s/INFLUX_ENV_PRE_CREATE_DB/${INFLUX_ENV_PRE_CREATE_DB}/g" \
  -e "s/INFLUX_PORT_8083_TCP_ADDR/${INFLUX_PORT_8083_TCP_ADDR:-${INFLUX_PORT_8086_TCP_ADDR}}/g" \
  -e "s/INFLUX_PORT_8083_TCP_PORT/${INFLUX_PORT_8083_TCP_PORT:-8083}/g" \
  -e "s/WO_USER/${WO_USER}/g" \
  -e "s/WO_PASS/${WO_PASS}/g" \
  /etc/nginx/nginx.conf

nginx
