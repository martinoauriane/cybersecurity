#!/bin/bash
host=$1
pingCheck() 
{
  ping=$(ping -c 1 $host | grep bytes | wc -l)
  if [ "$ping" -gt 1 ] ; then 
    echo "HOST IS UP"
  else 
    echo "HOST IS DOWN"
    exit
  fi
}

pingCheck