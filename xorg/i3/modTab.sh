#! /bin/bash

ID=`i3-msg -t get_tree | jq '[recurse(.nodes[]) | {id:.id,focused:.focused,window:.window,class:.window_properties.class} | select(.window != null) | select(.class != "i3bar")] as $array | $array | .[] | select(.focused == true) as $focused | $array | .[(index($focused)+1) % ($array | length)].id'`

i3-msg '[con_id='$ID'] focus'
