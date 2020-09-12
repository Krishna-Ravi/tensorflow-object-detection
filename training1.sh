
export PYTHONPATH=$PYTHONPATH:/home/krishna/Downloads/models
export PYTHONPATH=$PYTHONPATH:/home/krishna/Downloads/models/research
export PYTHONPATH=$PYTHONPATH:/home/krishna/Downloads/models/research/slim

bash corrupt1.sh
bash corrupt2.sh

python xml_to_csv.py


python3.6 generate_tfrecord.py --csv_input=images/train_labels.csv --image_dir=images/train --output_path=train.record
 
python3.6 generate_tfrecord.py --csv_input=images/test_labels.csv --image_dir=images/test --output_path=test.record



python3.6 train.py --logtostderr --train_dir=training/ --pipeline_config_path=training/faster_rcnn_inception_v2_pets.config

