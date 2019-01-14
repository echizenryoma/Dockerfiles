#!/bin/sh

work_dir=$(realpath -s $(dirname "$0"))

docker build -t echizenryoma/nginx:stable ${work_dir}
