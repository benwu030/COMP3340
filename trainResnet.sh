#!/bin/bash
cd "/mnt/c/Users/Ben Wu/Desktop/COMP3340/CNN_Image_Classification_Code/CNN_Image_Classification_Code" # python tools/train.py  --config 'configs/project/alexnet_flowers.py' --work-dir 'output/alexnet'
eval "$(conda shell.bash hook)"
conda activate mmcls2
#resenet 18
# python tools/train.py  --config 'configs/project/resnet18_flowers_bs128.py' --work-dir 'output/resnet18' --cfg-options 'optimizer.lr=1e-2'  'data.samples_per_gpu=4' 'log_config.interval=298' 
# python tools/train.py  --config 'configs/project/resnet18_flowers_bs128.py' --work-dir 'output/resnet18' --cfg-options 'optimizer.lr=1e-2'  'data.samples_per_gpu=16' 'log_config.interval=75'
# python tools/train.py  --config 'configs/project/resnet18_flowers_bs128.py' --work-dir 'output/resnet18' --cfg-options 'optimizer.lr=1e-2'  'data.samples_per_gpu=64' 'log_config.interval=19' 

# python tools/train.py  --config 'configs/project/resnet18_flowers_bs128.py' --work-dir 'output/resnet18' --cfg-options 'optimizer.lr=1e-3'  'data.samples_per_gpu=4' 'log_config.interval=298' 
# python tools/train.py  --config 'configs/project/resnet18_flowers_bs128.py' --work-dir 'output/resnet18' --cfg-options 'optimizer.lr=1e-3'  'data.samples_per_gpu=16' 'log_config.interval=75'
# python tools/train.py  --config 'configs/project/resnet18_flowers_bs128.py' --work-dir 'output/resnet18' --cfg-options 'optimizer.lr=1e-3'  'data.samples_per_gpu=64' 'log_config.interval=19' 

# python tools/train.py  --config 'configs/project/resnet18_flowers_bs128.py' --work-dir 'output/resnet18' --cfg-options 'optimizer.lr=1e-4'  'data.samples_per_gpu=4' 'log_config.interval=298' 
# python tools/train.py  --config 'configs/project/resnet18_flowers_bs128.py' --work-dir 'output/resnet18' --cfg-options 'optimizer.lr=1e-4'  'data.samples_per_gpu=16' 'log_config.interval=75'
# python tools/train.py  --config 'configs/project/resnet18_flowers_bs128.py' --work-dir 'output/resnet18' --cfg-options 'optimizer.lr=1e-4'  'data.samples_per_gpu=64' 'log_config.interval=19' 

# #resnet50
# python tools/train.py  --config 'configs/project/resnet50_flowers.py' --work-dir 'output/resnet50' --cfg-options 'optimizer.lr=1e-2'  'data.samples_per_gpu=4' 'log_config.interval=298' 
# python tools/train.py  --config 'configs/project/resnet50_flowers.py' --work-dir 'output/resnet50' --cfg-options 'optimizer.lr=1e-2'  'data.samples_per_gpu=16' 'log_config.interval=75'
# python tools/train.py  --config 'configs/project/resnet50_flowers.py' --work-dir 'output/resnet50' --cfg-options 'optimizer.lr=1e-2'  'data.samples_per_gpu=64' 'log_config.interval=19' 

# python tools/train.py  --config 'configs/project/resnet50_flowers.py' --work-dir 'output/resnet50' --cfg-options 'optimizer.lr=1e-3'  'data.samples_per_gpu=4' 'log_config.interval=298' 
# python tools/train.py  --config 'configs/project/resnet50_flowers.py' --work-dir 'output/resnet50' --cfg-options 'optimizer.lr=1e-3'  'data.samples_per_gpu=16' 'log_config.interval=75'
# python tools/train.py  --config 'configs/project/resnet50_flowers.py' --work-dir 'output/resnet50' --cfg-options 'optimizer.lr=1e-3'  'data.samples_per_gpu=64' 'log_config.interval=19' 

# python tools/train.py  --config 'configs/project/resnet50_flowers.py' --work-dir 'output/resnet50' --cfg-options 'optimizer.lr=1e-4'  'data.samples_per_gpu=4' 'log_config.interval=298' 
# python tools/train.py  --config 'configs/project/resnet50_flowers.py' --work-dir 'output/resnet50' --cfg-options 'optimizer.lr=1e-4'  'data.samples_per_gpu=16' 'log_config.interval=75'
# python tools/train.py  --config 'configs/project/resnet50_flowers.py' --work-dir 'output/resnet50' --cfg-options 'optimizer.lr=1e-4'  'data.samples_per_gpu=64' 'log_config.interval=19' 

# #resnet 101
# python tools/train.py  --config 'configs/project/resnet101_flowers.py' --work-dir 'output/resnet101' --cfg-options 'optimizer.lr=1e-2'  'data.samples_per_gpu=4' 'log_config.interval=298' 
# python tools/train.py  --config 'configs/project/resnet101_flowers.py' --work-dir 'output/resnet101' --cfg-options 'optimizer.lr=1e-2'  'data.samples_per_gpu=16' 'log_config.interval=75'
python tools/train.py  --config 'configs/project/resnet101_flowers.py' --work-dir 'output/resnet101' --cfg-options 'optimizer.lr=1e-2'  'data.samples_per_gpu=64' 'log_config.interval=19' 

python tools/train.py  --config 'configs/project/resnet101_flowers.py' --work-dir 'output/resnet101' --cfg-options 'optimizer.lr=1e-3'  'data.samples_per_gpu=4' 'log_config.interval=298' 
python tools/train.py  --config 'configs/project/resnet101_flowers.py' --work-dir 'output/resnet101' --cfg-options 'optimizer.lr=1e-3'  'data.samples_per_gpu=16' 'log_config.interval=75'
python tools/train.py  --config 'configs/project/resnet101_flowers.py' --work-dir 'output/resnet101' --cfg-options 'optimizer.lr=1e-3'  'data.samples_per_gpu=64' 'log_config.interval=19' 

python tools/train.py  --config 'configs/project/resnet101_flowers.py' --work-dir 'output/resnet101' --cfg-options 'optimizer.lr=1e-4'  'data.samples_per_gpu=4' 'log_config.interval=298' 
python tools/train.py  --config 'configs/project/resnet101_flowers.py' --work-dir 'output/resnet101' --cfg-options 'optimizer.lr=1e-4'  'data.samples_per_gpu=16' 'log_config.interval=75'
python tools/train.py  --config 'configs/project/resnet101_flowers.py' --work-dir 'output/resnet101' --cfg-options 'optimizer.lr=1e-4'  'data.samples_per_gpu=64' 'log_config.interval=19' 

#resnet152
python tools/train.py  --config 'configs/project/resnet152_flowers.py' --work-dir 'output/resnet152' --cfg-options 'optimizer.lr=1e-2'  'data.samples_per_gpu=4' 'log_config.interval=298' 
python tools/train.py  --config 'configs/project/resnet152_flowers.py' --work-dir 'output/resnet152' --cfg-options 'optimizer.lr=1e-2'  'data.samples_per_gpu=16' 'log_config.interval=75'
python tools/train.py  --config 'configs/project/resnet152_flowers.py' --work-dir 'output/resnet152' --cfg-options 'optimizer.lr=1e-2'  'data.samples_per_gpu=64' 'log_config.interval=19' 

python tools/train.py  --config 'configs/project/resnet152_flowers.py' --work-dir 'output/resnet152' --cfg-options 'optimizer.lr=1e-3'  'data.samples_per_gpu=4' 'log_config.interval=298' 
python tools/train.py  --config 'configs/project/resnet152_flowers.py' --work-dir 'output/resnet152' --cfg-options 'optimizer.lr=1e-3'  'data.samples_per_gpu=16' 'log_config.interval=75'
python tools/train.py  --config 'configs/project/resnet152_flowers.py' --work-dir 'output/resnet152' --cfg-options 'optimizer.lr=1e-3'  'data.samples_per_gpu=64' 'log_config.interval=19' 

python tools/train.py  --config 'configs/project/resnet152_flowers.py' --work-dir 'output/resnet152' --cfg-options 'optimizer.lr=1e-4'  'data.samples_per_gpu=4' 'log_config.interval=298' 
python tools/train.py  --config 'configs/project/resnet152_flowers.py' --work-dir 'output/resnet152' --cfg-options 'optimizer.lr=1e-4'  'data.samples_per_gpu=16' 'log_config.interval=75'
python tools/train.py  --config 'configs/project/resnet152_flowers.py' --work-dir 'output/resnet152' --cfg-options 'optimizer.lr=1e-4'  'data.samples_per_gpu=64' 'log_config.interval=19' 