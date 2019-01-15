#!/bin/sh

work_dir=$(realpath -s $(dirname "$0"))

docker build -t echizenryoma/squid:3.5 ${work_dir}
