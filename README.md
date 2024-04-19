# Project

## Final Model
Our Final Model attained maximum validation accuracy of **95.58824** and testing accuracy **93.3823**:
| BackBone | Pretrained with | Optimizer | Batch Size | Learning Rate | Epochs |
|:--------:|:---------------:|:---------:|:----------:|:-------------:|:------:|
| ResNet 18     |  ILSVRC 2012 dataset | SGD | 4 | 0.001| 150|

## Flops of the model:

Input shape: (3, 224, 224) 

Flops: 1.82 GFLOPs

Params: 11.19 M

## Steps to Train the model
### 1.Set-up for this project

The following way is only applicaple with HKU GPU Farm (run the command one by one):

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
```
wget https://www.robots.ox.ac.uk/~vgg/data/flowers/17/17flowers.tgz
tar zxvf 17flowers.tgz
mkdir data
mv 17flowers data/flowers
```

### 3.Split the data
```
python data/flowers/split.py
python data/flowers/generate_meta.py
```

### 4.Training the network

Run the following command, default output will be located in `/output/{network}`

```bash
bash trainAlexnet.sh
bash trainResnet.sh
bash trainVGG.sh
bash trainResnet18_trainResnetPretrained.sh
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

## Project 1. Can a machine recognize images?

Image classification is one of the core problems in computer vision that, despite its simplicity, has a large variety of practical applications. In this project, you are asked to train a convolutional Neural Network (CNN) to recognize flower types. Then, you may use novel modules to improve the performance of your network.
![](https://i.imgur.com/AKDQbxN.jpg)

### Benchmark

In this project, you can use Oxford 17 flowers dataset (https://www.robots.ox.ac.uk/~vgg/data/flowers/17/index.html), which has 17 categories of common flowers and 80 images for each category. The evaluation metric of your trained model is top-1 accuracy. You can start the training and validation of this dataset with the CNN tutorial in this course.

### Data Processing

After spliting images in each class into sub training set, sub validation set and sub test set according to the CNN tutorial, you can try different data augmentations for training such as random cropping and random flipping, to find out the best way to train your model.

### Baseline Model

You can start with the classical model such as AlexNet [1], VGG [2] and ResNet [3] as the baseline models for your project by running the code in "mmclassification". You can easily train different models in "mmclassification" by changing the config files. For each baseline model, you can try to tune the hyper-parameters such as the learning rate and the batch size to find the best config.

[1] Alex Krizhevsky, Ilya Sutskever, and Geoffrey E Hinton. Imagenet classification with deep convolutional neural net- works.
[2] Karen Simonyan and Andrew Zisserman. Very deep convo- lutional networks for large-scale image recognition.
[3] Kaiming He, Xiangyu Zhang, Shaoqing Ren, and Jian Sun. Deep residual learning for image recognition.

### Improvement

After training some classical models and finding the best way to train the model, you can try to further impove the performance of the model so that it can recognize flower types more accuractly. You can read relevant papers that provide methods to improve the baseline model such as better training strategies and elaborately designed modules. You need to understand why these methods work and implement these methods to see whether you can get better results in recognizing flowers. You also need to analysize the computational complexity in terms of FLOPs and number of parameters of each model for a thorough evaluation.

## Report Submission

Please submit your proposal as a PDF using the [CVPR template](http://cvpr2021.thecvf.com/sites/default/files/2020-09/cvpr2021AuthorKit_2.zip). **Only one person on your team should submit.**

Your final report is required to be **5** pages, structured like a paper from a computer vision conference. Please use the template so we can fairly judge all student projects without worrying about altered font sizes, margins, etc.

The following is a suggested structure for your report, as well as the rubric that we will follow when evaluating reports. You don't necessarily have to organize your report using these sections in this order, but that would likely be a good starting point for most projects.

- **Title, Author(s)**
- **Abstract**: Briefly describe your problem, approach, and key results. Should be no more than 300 words.
- **Introduction**: Describe the problem you are working on, why it's important, and an overview of your results
- **Related Work**: Discuss published work that relates to your project. How is your approach similar or different from others?
- **Methods**: Discuss your approach for solving the problems that you set up in the introduction. Why is your approach the right thing to do? Did you consider alternative approaches? You should demonstrate that you have applied ideas and skills built up during the quarter to tackling your problem of choice. It may be helpful to include figures, diagrams, or tables to describe your method or compare it with other methods.
- **Experiments**: Discuss the data and experiments that you performed to demonstrate that your approach solves the problem. The exact experiments will vary depending on the project, but you might compare with previously published methods, perform an ablation study to determine the impact of various components of your system, experiment with different hyperparameters or architectural choices, use visualization techniques to gain insight into how your model works, discuss common failure modes of your model, etc. You should include graphs, tables, or other figures to illustrate your experimental results.
- **Conclusion** Summarize your key results - what have you learned? Suggest ideas for future extensions or new applications of your ideas.

## Other Information

To inspire ideas, you might also look at recent deep learning publications from top-tier conferences, as well as other resources below.

- [CVPR](http://openaccess.thecvf.com/CVPR2021): IEEE Conference on Computer Vision and Pattern Recognition
- [ICCV](http://openaccess.thecvf.com/ICCV2021): International Conference on Computer Vision
- [ECCV](http://openaccess.thecvf.com/ECCV2020): European Conference on Computer Vision
- [NIPS](https://papers.nips.cc/): Neural Information Processing Systems
- [ICLR](https://openreview.net/group?id=ICLR.cc/2022/Conference): International Conference on Learning Representations
- [ICML](https://icml.cc/Conferences/2021/Schedule?type=Poster): International Conference on Machine Learning

You may consult any papers, books, online references, or publicly available implementations for ideas and code that you may want to incorporate into your strategy or algorithm, so long as you clearly cite your sources in your code and your writeup. However, under no circumstances may you look at another group’s code or incorporate their code into your project.
