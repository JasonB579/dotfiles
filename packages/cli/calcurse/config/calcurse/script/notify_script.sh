#!/bin/bash

notify-send --icon=gtk-info Calcurse "$(calcurse -n)"

nextAppt="$(calcurse -n)"
apptSchedule="$(calcurse -a)"

message="$nextAppt\n\n\n$apptSchedule"

#echo -e "$message" | mail -s "[Calcurse] Upcoming Appt." jason.blocklove@gmail.com
