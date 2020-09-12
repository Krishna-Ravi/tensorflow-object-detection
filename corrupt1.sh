
main_path=$(pwd)
joining_folder="/images/test/"

image_path="${main_path}${joining_folder}"
echo $image_path

python3.6 corrupt.py $image_path


