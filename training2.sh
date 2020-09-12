#!/bin/bash
read -p "Enter the largest number shown in your training folder : " number


export PYTHONPATH=$PYTHONPATH:/home/krishna/Downloads/models
export PYTHONPATH=$PYTHONPATH:/home/krishna/Downloads/models/research
export PYTHONPATH=$PYTHONPATH:/home/krishna/Downloads/models/research/slim

python3.6 export_inference_graph.py --input_type image_tensor --pipeline_config_path training/faster_rcnn_inception_v2_pets.config --trained_checkpoint_prefix training/model.ckpt-$number --output_directory inference_graph

echo “Enter your choice”
echo “ 1. Live detection”
echo “ 2. Image detection”
echo “ 3. Video detection”

 read num
 case $num in
 [1])
 echo “you have entered a choice 1”
 
 	python Object_detection_video_live.py 
 ;;
 [2])
 echo “you have entered a choice 2”
 
 	python Object_detection_image.py 
 ;;
 [3])
 echo “you have entered a choice 3”
 
 	python Object_detection_video.py 
 ;;
 *) 
 esac
 

