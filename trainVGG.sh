#!/bin/bash
cd "/mnt/c/Users/Ben Wu/Desktop/COMP3340/CNN_Image_Classification_Code/CNN_Image_Classification_Code" # python tools/train.py  --config 'configs/project/alexnet_flowers.py' --work-dir 'output/alexnet'
eval "$(conda shell.bash hook)"
conda activate mmcls2
#vgg11
python tools/train.py  --config 'configs/project/vgg11_flowers.py' --work-dir 'output/vgg11' --cfg-options 'optimizer.lr=1e-2' 'data.samples_per_gpu=4' 'log_config.interval=298'
python tools/train.py  --config 'configs/project/vgg11_flowers.py' --work-dir 'output/vgg11' --cfg-options 'optimizer.lr=1e-2' 'data.samples_per_gpu=16' 'log_config.interval=75'
python tools/train.py  --config 'configs/project/vgg11_flowers.py' --work-dir 'output/vgg11' --cfg-options 'optimizer.lr=1e-2' 'data.samples_per_gpu=64' 'log_config.interval=19'
python tools/train.py  --config 'configs/project/vgg11_flowers.py' --work-dir 'output/vgg11' --cfg-options 'optimizer.lr=1e-3' 'data.samples_per_gpu=4' 'log_config.interval=298'
python tools/train.py  --config 'configs/project/vgg11_flowers.py' --work-dir 'output/vgg11' --cfg-options 'optimizer.lr=1e-3' 'data.samples_per_gpu=16' 'log_config.interval=75'
python tools/train.py  --config 'configs/project/vgg11_flowers.py' --work-dir 'output/vgg11' --cfg-options 'optimizer.lr=1e-3' 'data.samples_per_gpu=64' 'log_config.interval=19'
python tools/train.py  --config 'configs/project/vgg11_flowers.py' --work-dir 'output/vgg11' --cfg-options 'optimizer.lr=1e-4' 'data.samples_per_gpu=4' 'log_config.interval=298'
python tools/train.py  --config 'configs/project/vgg11_flowers.py' --work-dir 'output/vgg11' --cfg-options 'optimizer.lr=1e-4' 'data.samples_per_gpu=16' 'log_config.interval=75'
python tools/train.py  --config 'configs/project/vgg11_flowers.py' --work-dir 'output/vgg11' --cfg-options 'optimizer.lr=1e-4' 'data.samples_per_gpu=64' 'log_config.interval=19'


#vgg13
python tools/train.py  --config 'configs/project/vgg13_flowers.py' --work-dir 'output/vgg13' --cfg-options 'optimizer.lr=1e-2' 'data.samples_per_gpu=4' 'log_config.interval=298'
python tools/train.py  --config 'configs/project/vgg13_flowers.py' --work-dir 'output/vgg13' --cfg-options 'optimizer.lr=1e-2' 'data.samples_per_gpu=16' 'log_config.interval=75'
python tools/train.py  --config 'configs/project/vgg13_flowers.py' --work-dir 'output/vgg13' --cfg-options 'optimizer.lr=1e-2' 'data.samples_per_gpu=64' 'log_config.interval=19'
python tools/train.py  --config 'configs/project/vgg13_flowers.py' --work-dir 'output/vgg13' --cfg-options 'optimizer.lr=1e-3' 'data.samples_per_gpu=4' 'log_config.interval=298'
python tools/train.py  --config 'configs/project/vgg13_flowers.py' --work-dir 'output/vgg13' --cfg-options 'optimizer.lr=1e-3' 'data.samples_per_gpu=16' 'log_config.interval=75'
python tools/train.py  --config 'configs/project/vgg13_flowers.py' --work-dir 'output/vgg13' --cfg-options 'optimizer.lr=1e-3' 'data.samples_per_gpu=64' 'log_config.interval=19'
python tools/train.py  --config 'configs/project/vgg13_flowers.py' --work-dir 'output/vgg13' --cfg-options 'optimizer.lr=1e-4' 'data.samples_per_gpu=4' 'log_config.interval=298'
python tools/train.py  --config 'configs/project/vgg13_flowers.py' --work-dir 'output/vgg13' --cfg-options 'optimizer.lr=1e-4' 'data.samples_per_gpu=16' 'log_config.interval=75'
python tools/train.py  --config 'configs/project/vgg13_flowers.py' --work-dir 'output/vgg13' --cfg-options 'optimizer.lr=1e-4' 'data.samples_per_gpu=64' 'log_config.interval=19'

#vgg16
python tools/train.py  --config 'configs/project/vgg16_flowers.py' --work-dir 'output/vgg16' --cfg-options 'optimizer.lr=1e-2' 'data.samples_per_gpu=4' 'log_config.interval=298'
python tools/train.py  --config 'configs/project/vgg16_flowers.py' --work-dir 'output/vgg16' --cfg-options 'optimizer.lr=1e-2' 'data.samples_per_gpu=16' 'log_config.interval=75'
python tools/train.py  --config 'configs/project/vgg16_flowers.py' --work-dir 'output/vgg16' --cfg-options 'optimizer.lr=1e-2' 'data.samples_per_gpu=64' 'log_config.interval=19'
python tools/train.py  --config 'configs/project/vgg16_flowers.py' --work-dir 'output/vgg16' --cfg-options 'optimizer.lr=1e-3' 'data.samples_per_gpu=4' 'log_config.interval=298'
python tools/train.py  --config 'configs/project/vgg16_flowers.py' --work-dir 'output/vgg16' --cfg-options 'optimizer.lr=1e-3' 'data.samples_per_gpu=16' 'log_config.interval=75'
python tools/train.py  --config 'configs/project/vgg16_flowers.py' --work-dir 'output/vgg16' --cfg-options 'optimizer.lr=1e-3' 'data.samples_per_gpu=64' 'log_config.interval=19'
python tools/train.py  --config 'configs/project/vgg16_flowers.py' --work-dir 'output/vgg16' --cfg-options 'optimizer.lr=1e-4' 'data.samples_per_gpu=4' 'log_config.interval=298'
python tools/train.py  --config 'configs/project/vgg16_flowers.py' --work-dir 'output/vgg16' --cfg-options 'optimizer.lr=1e-4' 'data.samples_per_gpu=16' 'log_config.interval=75'
python tools/train.py  --config 'configs/project/vgg16_flowers.py' --work-dir 'output/vgg16' --cfg-options 'optimizer.lr=1e-4' 'data.samples_per_gpu=64' 'log_config.interval=19'

#vgg19
python tools/train.py  --config 'configs/project/vgg19_flowers.py' --work-dir 'output/vgg19' --cfg-options 'optimizer.lr=1e-2' 'data.samples_per_gpu=4' 'log_config.interval=298'
python tools/train.py  --config 'configs/project/vgg19_flowers.py' --work-dir 'output/vgg19' --cfg-options 'optimizer.lr=1e-2' 'data.samples_per_gpu=16' 'log_config.interval=75'
python tools/train.py  --config 'configs/project/vgg19_flowers.py' --work-dir 'output/vgg19' --cfg-options 'optimizer.lr=1e-2' 'data.samples_per_gpu=64' 'log_config.interval=19'
python tools/train.py  --config 'configs/project/vgg19_flowers.py' --work-dir 'output/vgg19' --cfg-options 'optimizer.lr=1e-3' 'data.samples_per_gpu=4' 'log_config.interval=298'
python tools/train.py  --config 'configs/project/vgg19_flowers.py' --work-dir 'output/vgg19' --cfg-options 'optimizer.lr=1e-3' 'data.samples_per_gpu=16' 'log_config.interval=75'
python tools/train.py  --config 'configs/project/vgg19_flowers.py' --work-dir 'output/vgg19' --cfg-options 'optimizer.lr=1e-3' 'data.samples_per_gpu=64' 'log_config.interval=19'
python tools/train.py  --config 'configs/project/vgg19_flowers.py' --work-dir 'output/vgg19' --cfg-options 'optimizer.lr=1e-4' 'data.samples_per_gpu=4' 'log_config.interval=298'
python tools/train.py  --config 'configs/project/vgg19_flowers.py' --work-dir 'output/vgg19' --cfg-options 'optimizer.lr=1e-4' 'data.samples_per_gpu=16' 'log_config.interval=75'
python tools/train.py  --config 'configs/project/vgg19_flowers.py' --work-dir 'output/vgg19' --cfg-options 'optimizer.lr=1e-4' 'data.samples_per_gpu=64' 'log_config.interval=19'