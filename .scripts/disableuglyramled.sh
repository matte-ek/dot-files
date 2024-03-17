#!/bin/bash

modprobe i2c-dev

i2cset -y 4 0x27 0xe1 0x01 &
i2cset -y 4 0x27 0xe2 0x01 &
i2cset -y 4 0x27 0xe1 0x02 &
i2cset -y 4 0x27 0xe1 0x03 &

sleep 1

rmmod i2c-dev 