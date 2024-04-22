# Project

## Final Model
Our Final Model attained maximum validation accuracy of **95.58824** and testing accuracy **93.3823**.

| BackBone | Pretrained with | Optimizer | Batch Size | Learning Rate | Epochs |
|:--------:|:---------------:|:---------:|:----------:|:-------------:|:------:|
| ResNet 18     |  ILSVRC 2012 dataset | SGD | 4 | 0.001| 150|

Test the model with
```
python tools/test.py --config 'configs/project/resnet18_flowers_pretrained.py' --checkpoint 'output/Final/epoch_150.pth' --out 'output/Final/finalresult.json'
python demo/image_demo.py --img 'demo/tigerlily.jpg' --config 'configs/project/resnet18_flowers_pretrained.py' --checkpoint 'output/Final/epoch_150.pth'

```

### Example output
![image](https://github.com/benwu030/COMP3340/assets/78753601/4d2752d1-e13e-4a15-9ac6-8bb56c6045cd)


## Flops of the model:

Input shape: (3, 224, 224) 

Flops: 1.82 GFLOPs

Params: 11.19 M

## Steps to Train the model
### 1.Set-up for this project

The following way is only applicaple with HKU GPU Farm / linux (run the command one by one):

P.S. For Windows WSL2, please install the corresponding cudatoolkit following the instructions in https://docs.nvidia.com/cuda/wsl-user-guide/index.html
```
conda create -n mmcls python=3.7 -y
conda activate mmcls
conda install pytorch\==1.7.1 torchvision\==0.8.2 torchaudio\==0.7.2 cudatoolkit=10.1 -c pytorch
pip install mmcv\==1.5.0
pip install mmcv-full\==1.5.0
cd CNN_Image_Classification_Code
pip install -e .
pip install yapf\==0.40.1
```

### 2.Download the dataset
make sure your current directory is inside CNN_Image_Classification_Code/CNN_Image_Classification_Code
```
wget https://www.robots.ox.ac.uk/~vgg/data/flowers/17/17flowers.tgz
tar zxvf 17flowers.tgz
mv  -v jpg/* data/flowers
```

### 3.Split the data
make sure your current directory is /data/flowers
```
python data/flowers/split.py
python data/flowers/generate_meta.py
```

### 4.Training the network
make sure your current directory is COMP3340 or where the training bash is located

Run the following command, default output will be located in `/output/{network}`

```bash
bash trainAlexnet.sh
bash trainResnet.sh
bash trainVGG.sh
bash trainResnetPretrained.sh
```
### 5. Testing the model

```
python tools/test.py --config{config location} --checkpoint{your trained epoch } --out{output file .json/.pkl}
```
E.g.
```
python tools/test.py --config 'configs/project/resnet18_flowers_pretrained.py' --checkpoint 'output/Final/epoch_150.pth' --out 'output/Final/finalresult.json'
python tools/analysis_tools/eval_metric.py 'configs/project/resnet18_flowers_pretrained.py' 'output/Final/finalresult.json' --metrics accuracy
```


### Plot Graph

Modify analyze_logs.py  
Command examples:

```bash
python tools/analysis_tools/analyze_logs.py plot_curve ./output/alexnet/20240308_171954.log.json  ./output/alexnet/20240308_172216.log.json ./output/alexnet/20240308_172433.log.json ./output/alexnet/20240308_172651.log.json --keys accuracy_top-1 --legend lr=0.1 lr=0.01 lr=0.001 lr=0.0001 --title 'AlexNet in 10 Epochs'

python tools/analysis_tools/analyze_logs.py plot_curve ./output/resnet18/20240308_172015.log.json  ./output/resnet18/20240308_172219.log.json ./output/resnet18/20240308_172420.log.json ./output/resnet18/20240308_172621.log.json --keys accuracy_top-1 --legend lr=0.1 lr=0.01 lr=0.001 lr=0.0001 --title 'ResNet18 in 10 Epochs'

python tools/analysis_tools/analyze_logs.py plot_curve ./output/resnet50/20240308_172822.log.json  ./output/resnet50/20240308_173027.log.json ./output/resnet50/20240308_173234.log.json ./output/resnet50/20240308_173441.log.json --keys accuracy_top-1 --legend lr=0.1 lr=0.01 lr=0.001 lr=0.0001 --title 'ResNet50 in 10 Epochs'

python tools/analysis_tools/analyze_logs.py plot_curve ./output/resnet101/20240308_173647.log.json  ./output/resnet101/20240308_173911.log.json ./output/resnet101/20240308_174135.log.json ./output/resnet101/20240308_174359.log.json --keys accuracy_top-1 --legend lr=0.1 lr=0.01 lr=0.001 lr=0.0001 --title 'ResNet101 in 10 Epochs'

python tools/analysis_tools/analyze_logs.py plot_curve ./output/resnet152/20240308_174622.log.json  ./output/resnet152/20240308_181431.log.json ./output/resnet152/20240308_174937.log.json ./output/resnet152/20240308_175245.log.json --keys accuracy_top-1 --legend lr=0.1 lr=0.01 lr=0.001 lr=0.0001 --title 'ResNet152 in 10 Epochs'
```

## YOLOv5s Model

You Only Look Once is a state-of-the-art CNN model for object detection. It has been proven that YOLO can also perform object classification and detection at the same time with high accuracy.

In our expriment, we fine-tuned a state-of-the-art object detection model for flower classification with the Oxford 17 dataset and achived a precision of 0.9740 (mAP_0.5).

### Dataset preperation
Refer to `YOLO_Oxford_dataset/convert.py`

### Training
Refer to `yolov5s_oxford_training.ipynb`

### Results
The final model and converted dataset can be downloaded from: https://github.com/benwu030/COMP3340/releases/tag/yolo

![results](https://github.com/benwu030/COMP3340/assets/38398443/4fc364f2-95bc-49fb-a339-6a70e94b9e0d)
![val_batch0_pred](https://github.com/benwu030/COMP3340/assets/38398443/3dc7e096-260c-4cee-8cfe-5dbd56f1ec8b)
![confusion_matrix](https://github.com/benwu030/COMP3340/assets/38398443/2c63bd41-fca5-4ad0-afc5-d53ad2f763d5)


