#!/bin/bash
read -p "Enter file name: " file_name
read -p "Enter start time (format hh:mm:ss): " start_time
read -p "Enter file duration (format hh:mm:ss): " end_time
read -p "Enter output file name (press enter for default output name): " output_name
if [ "$output_name" = "" ]
	then
	echo $output_name
	output_name="cut"$file_name
	fi
echo $output_name
ffmpeg -i $file_name -ss $start_time -t $end_time -vcodec copy -acodec copy $output_name
