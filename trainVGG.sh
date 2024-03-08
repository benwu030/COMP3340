#!/bin/bash
cd "/mnt/c/Users/Ben Wu/Desktop/COMP3340/CNN_Image_Classification_Code/CNN_Image_Classification_Code" # python tools/train.py  --config 'configs/project/alexnet_flowers.py' --work-dir 'output/alexnet'
eval "$(conda shell.bash hook)"
conda activate mmcls2
python tools/train.py  --config 'configs/project/vgg11_flowers.py' --work-dir 'output/vgg11'
python tools/train.py  --config 'configs/project/vgg11_flowers.py' --work-dir 'output/vgg11' --cfg-options 'optimizer.lr=1e-2' 'optimizer.weight_decay=1e-6'
python tools/train.py  --config 'configs/project/vgg11_flowers.py' --work-dir 'output/vgg11' --cfg-options 'optimizer.lr=1e-3' 'optimizer.weight_decay=1e-9'
python tools/train.py  --config 'configs/project/vgg11_flowers.py' --work-dir 'output/vgg11' --cfg-options 'optimizer.lr=1e-4' 'optimizer.weight_decay=1e-12'


python tools/train.py  --config 'configs/project/vgg13_flowers.py' --work-dir 'output/vgg13'
python tools/train.py  --config 'configs/project/vgg13_flowers.py' --work-dir 'output/vgg13' --cfg-options 'optimizer.lr=1e-2' 'optimizer.weight_decay=1e-6'
python tools/train.py  --config 'configs/project/vgg13_flowers.py' --work-dir 'output/vgg13' --cfg-options 'optimizer.lr=1e-3' 'optimizer.weight_decay=1e-9'
python tools/train.py  --config 'configs/project/vgg13_flowers.py' --work-dir 'output/vgg13' --cfg-options 'optimizer.lr=1e-4' 'optimizer.weight_decay=1e-12'

python tools/train.py  --config 'configs/project/vgg16_flowers.py' --work-dir 'output/vgg16'
python tools/train.py  --config 'configs/project/vgg16_flowers.py' --work-dir 'output/vgg16' --cfg-options 'optimizer.lr=1e-2' 'optimizer.weight_decay=1e-6'
python tools/train.py  --config 'configs/project/vgg16_flowers.py' --work-dir 'output/vgg16' --cfg-options 'optimizer.lr=1e-3' 'optimizer.weight_decay=1e-9'
python tools/train.py  --config 'configs/project/vgg16_flowers.py' --work-dir 'output/vgg16' --cfg-options 'optimizer.lr=1e-4' 'optimizer.weight_decay=1e-12'

python tools/train.py  --config 'configs/project/vgg19_flowers.py' --work-dir 'output/vgg19'
python tools/train.py  --config 'configs/project/vgg19_flowers.py' --work-dir 'output/vgg19' --cfg-options 'optimizer.lr=1e-2' 'optimizer.weight_decay=1e-6'
python tools/train.py  --config 'configs/project/vgg19_flowers.py' --work-dir 'output/vgg19' --cfg-options 'optimizer.lr=1e-3' 'optimizer.weight_decay=1e-9'
python tools/train.py  --config 'configs/project/vgg19_flowers.py' --work-dir 'output/vgg19' --cfg-options 'optimizer.lr=1e-4' 'optimizer.weight_decay=1e-12'
