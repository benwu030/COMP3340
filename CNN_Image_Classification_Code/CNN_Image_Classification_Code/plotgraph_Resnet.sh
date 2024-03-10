#!/bin/bash

n=4

resnet18_json_files=$(find "./output/resnet18" -type f -name "alexnet_*.json" | head -n $n | tr '\n' ' ')
echo "found $resnet18_json_files"
resnet50_json_files=$(find "./output/resnet50" -type f -name "alexnet_*.json" | head -n $n | tr '\n' ' ')
echo "found $resnet50_json_files"
resnet101_json_files=$(find "./output/resnet101" -type f -name "alexnet_*.json" | head -n $n | tr '\n' ' ')
echo "found $resnet101_json_files"
resnet152_json_files=$(find "./output/resnet152" -type f -name "alexnet_*.json" | head -n $n | tr '\n' ' ')
echo "found $resnet152_json_files"

python tools/analysis_tools/analyze_logs.py plot_curve $resnet18_json_files --keys loss --legend lr=0.1 lr=0.01 lr=0.001 lr=0.0001 --title 'ResNet18 in 10 Epochs' --out ./output/resultImages/resnet18_lr_loss.jpg
python tools/analysis_tools/analyze_logs.py plot_curve $resnet50_json_files --keys loss --legend lr=0.1 lr=0.01 lr=0.001 lr=0.0001 --title 'ResNet50 in 10 Epochs' --out ./output/resultImages/resnet50_lr_loss.jpg
python tools/analysis_tools/analyze_logs.py plot_curve $resnet101_json_files --keys loss --legend lr=0.1 lr=0.01 lr=0.001 lr=0.0001 --title 'ResNet101 in 10 Epochs' --out ./output/resultImages/resnet101_lr_loss.jpg
python tools/analysis_tools/analyze_logs.py plot_curve $resnet152_json_files --keys loss --legend lr=0.1 lr=0.01 lr=0.001 lr=0.0001 --title 'ResNet152 in 10 Epochs' --out ./output/resultImages/resnet152_lr_loss.jpg

python tools/analysis_tools/analyze_logs.py plot_curve $resnet18_json_files --keys accuracy --legend lr=0.1 lr=0.01 lr=0.001 lr=0.0001 --title 'ResNet18 in 10 Epochs' --out ./output/resultImages/resnet18_lr_accuracy.jpg
python tools/analysis_tools/analyze_logs.py plot_curve $resnet50_json_files --keys accuracy --legend lr=0.1 lr=0.01 lr=0.001 lr=0.0001 --title 'ResNet50 in 10 Epochs' --out ./output/resultImages/resnet50_lr_accuracy.jpg
python tools/analysis_tools/analyze_logs.py plot_curve $resnet101_json_files --keys accuracy --legend lr=0.1 lr=0.01 lr=0.001 lr=0.0001 --title 'ResNet101 in 10 Epochs' --out ./output/resultImages/resnet101_lr_accuracy.jpg
python tools/analysis_tools/analyze_logs.py plot_curve $resnet152_json_files --keys accuracy --legend lr=0.1 lr=0.01 lr=0.001 lr=0.0001 --title 'ResNet152 in 10 Epochs' --out ./output/resultImages/resnet152_lr_accuracy.jpg