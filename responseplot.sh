#!/bin/bash
rm plot.dat
site="https://riide.like.st"

writedata() {
  while [ true ] 
  do
    resp=`curl -o /dev/null -s -w %{time_total}  $site`
    time=`date +"%d/%m/%Y %H:%M:%S"`
    echo $time $resp >> plot.dat
    sleep 5
  done
}

writedata &
sleep 5
gnuplot plotter.gnu
