#!/bin/bash

iter=$1

if [ -z "$iter" ] #if iterations are not specified
then
    iter=1 #default number of iterations
fi

/home/root/powercycle.sh

./pool_notify ./pool_notify.out $1.pgm
