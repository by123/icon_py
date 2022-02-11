#!/bin/bash

read -t 60 -p "请输入sn开始编号:" a
read -t 60 -p "请输入sn结束编号:" b
read -t 60 -p "请输入文件保存路径:" c

while(( $a<=b ))
do
    echo $a https://www.xhdian.com/interface/qr?sn=$a >> $c
    let "a++"
done

open $c