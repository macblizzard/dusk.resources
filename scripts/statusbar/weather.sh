#!/bin/bash
get_weather()
{
        #curl -s v2.wttr.in | grep -e "Weather" | sed -n 2p | sed s/Weather://g | sed 's/,//g' | sed 's/+//g' | sed 's/°C.*/°C/' | sed 's/.*m//'
        curl -s v2.wttr.in | grep -e "Weather" | sed -n 2p | sed s/Weather://g | sed 's/,//g' | sed 's/+//g' | sed 's/°C.*/°C/' | sed 's/.*m//' | awk '{print $2,$3}'
}


#if [ $(( 10#$(date '+%S') % 30 )) -eq 0 ]; then
#       get_weather
#fi

get_weather
