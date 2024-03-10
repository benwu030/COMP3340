#!/bin/bash

n=4

VGG11_json_files=$(find "./output/vgg11" -type f -name "alexnet_*.json" | head -n $n | tr '\n' ' ')
echo "found $VGG11_json_files"
VGG13_json_files=$(find "./output/vgg13" -type f -name "alexnet_*.json" | head -n $n | tr '\n' ' ')
echo "found $VGG13_json_files"
VGG16_json_files=$(find "./output/vgg16" -type f -name "alexnet_*.json" | head -n $n | tr '\n' ' ')
echo "found $VGG16_json_files"
VGG19_json_files=$(find "./output/vgg19" -type f -name "alexnet_*.json" | head -n $n | tr '\n' ' ')
echo "found $VGG19_json_files"

python tools/analysis_tools/analyze_logs.py plot_curve $VGG11_json_files --keys loss --legend lr=0.1 lr=0.01 lr=0.001 lr=0.0001 --title 'VGG11 in 10 Epochs' --out ./output/resultImages/vgg11_lr_loss.jpg
python tools/analysis_tools/analyze_logs.py plot_curve $VGG13_json_files --keys loss --legend lr=0.1 lr=0.01 lr=0.001 lr=0.0001 --title 'VGG13 in 10 Epochs' --out ./output/resultImages/vgg13_lr_loss.jpg
python tools/analysis_tools/analyze_logs.py plot_curve $VGG16_json_files --keys loss --legend lr=0.1 lr=0.01 lr=0.001 lr=0.0001 --title 'VGG16 in 10 Epochs' --out ./output/resultImages/vgg16_lr_loss.jpg
python tools/analysis_tools/analyze_logs.py plot_curve $VGG19_json_files --keys loss --legend lr=0.1 lr=0.01 lr=0.001 lr=0.0001 --title 'VGG19 in 10 Epochs' --out ./output/resultImages/vgg19_lr_loss.jpg

python tools/analysis_tools/analyze_logs.py plot_curve $VGG11_json_files --keys accuracy --legend lr=0.1 lr=0.01 lr=0.001 lr=0.0001 --title 'VGG11 in 10 Epochs' --out ./output/resultImages/vgg11_lr_accuracy.jpg
python tools/analysis_tools/analyze_logs.py plot_curve $VGG13_json_files --keys accuracy --legend lr=0.1 lr=0.01 lr=0.001 lr=0.0001 --title 'VGG13 in 10 Epochs' --out ./output/resultImages/vgg13_lr_accuracy.jpg
python tools/analysis_tools/analyze_logs.py plot_curve $VGG16_json_files --keys accuracy --legend lr=0.1 lr=0.01 lr=0.001 lr=0.0001 --title 'VGG16 in 10 Epochs' --out ./output/resultImages/vgg16_lr_accuracy.jpg
python tools/analysis_tools/analyze_logs.py plot_curve $VGG19_json_files --keys accuracy --legend lr=0.1 lr=0.01 lr=0.001 lr=0.0001 --title 'VGG19 in 10 Epochs' --out ./output/resultImages/vgg19_lr_accuracy.jpg