#!/bin/bash

function hello(){
echo "$@"
}

hello sdf asdf asd
exit

# pins=$(sed -n "s/^\s*\(input\|output\|output reg\|output wire\) \(\S*\),.*/\2/p" *.v)
pins=$(sed -n "s/^\s*\(input\|\|output\|output reg\|output wire\) \(\S*\)\(,\|)\).*/\2/p" *.v)


for pin in $pins; do
		# echo $pin
		grep -q "set_location_assignment \S* -to $pin" Timer.qsf || echo set_location_assignment PIN -to $pin
		# echo yes
done



