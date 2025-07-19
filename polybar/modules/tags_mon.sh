#!/bin/bash

  #herbstclient tag_status | tr '\t' '\n' | sed 's/^.//'|grep "^1_"
  #herbstclient tag_status | tr '\t' '\n' | sed 's/^.//'|grep "^2_"
  #herbstclient tag_status | tr '\t' '\n' | sed 's/^.//'|grep -v "^[1|2]_"


  #for tag in "${mon1_names[@]}"; do
  #    echo "$tag"
  #done
tag_per_mon=( {1..5} )
echo "${tag_per_mon[@]}"
