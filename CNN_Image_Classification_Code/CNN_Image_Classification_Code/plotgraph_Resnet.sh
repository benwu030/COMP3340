#!/bin/bash

n=9
lr1="lr=1e-2,batch_size=4"
lr2="lr=1e-2,batch_size=16"
lr3="lr=1e-2,batch_size=64"
lr4="lr=1e-3,batch_size=4"
lr5="lr=1e-3,batch_size=16"
lr6="lr=1e-3,batch_size=64"
lr7="lr=1e-4,batch_size=4"
lr8="lr=1e-4,batch_size=16"
lr9="lr=1e-4,batch_size=64"
#$lr1 $lr2 $lr3 $lr4 $lr5 $lr6 $lr7 $lr8 $lr9
#$lr9 $lr8 $lr7 $lr6 $lr5 $lr4 $lr3 $lr2 $lr1
resnet18_json_files=$(find "./output/resnet18" -type f -name "resnet18_*.json" | tail -n $n | tr '\n' ' ')
echo "found $resnet18_json_files"
resnet50_json_files=$(find "./output/resnet50" -type f -name "resnet50_*.json" | tail -n $n | tr '\n' ' ')
echo "found $resnet50_json_files"
resnet101_json_files=$(find "./output/resnet101" -type f -name "resnet101_*.json" | tail -n $n | tr '\n' ' ')
echo "found $resnet101_json_files"
resnet152_json_files=$(find "./output/resnet152" -type f -name "resnet152_*.json" | tail -n $n | tr '\n' ' ')
echo "found $resnet152_json_files"

python tools/analysis_tools/analyze_logs.py plot_curve $resnet18_json_files --keys loss --legend $lr1 $lr2 $lr3 $lr4 $lr5 $lr6 $lr7 $lr8 $lr9 --title 'ResNet18 in 50 Epochs(Loss)' --out ./output/resultImages/resnet18_lr_loss.jpg
python tools/analysis_tools/analyze_logs.py plot_curve $resnet18_json_files --keys accuracy --legend $lr1 $lr2 $lr3 $lr4 $lr5 $lr6 $lr7 $lr8 $lr9  --title 'ResNet18 in 50 Epochs(Accuracy)' --out ./output/resultImages/resnet18_lr_accuracy.jpg

python tools/analysis_tools/analyze_logs.py plot_curve $resnet50_json_files --keys loss --legend $lr1 $lr2 $lr3 $lr4 $lr5 $lr6 $lr7 $lr8 $lr9  --title 'ResNet50 in 50 Epochs(Loss)' --out ./output/resultImages/resnet50_lr_loss.jpg
python tools/analysis_tools/analyze_logs.py plot_curve $resnet50_json_files --keys accuracy --legend $lr1 $lr2 $lr3 $lr4 $lr5 $lr6 $lr7 $lr8 $lr9  --title 'ResNet50 in 50 Epochs(Accuracy)' --out ./output/resultImages/resnet50_lr_accuracy.jpg

# python tools/analysis_tools/analyze_logs.py plot_curve $resnet101_json_files --keys loss --legend $lr9 $lr8 $lr7 $lr6 $lr5 $lr4 $lr3 $lr2 $lr1 --title 'ResNet101 in 50 Epochs(Loss)' --out ./output/resultImages/resnet101_lr_loss.jpg
# python tools/analysis_tools/analyze_logs.py plot_curve $resnet101_json_files --keys loss --legend $lr9 $lr8 $lr7 $lr6 $lr5 $lr4 $lr3 $lr2 $lr1 --title 'ResNet101 in 50 Epochs(Accuracy)' --out ./output/resultImages/resnet101_lr_accuracy.jpg

# python tools/analysis_tools/analyze_logs.py plot_curve $resnet152_json_files --keys loss --legend $lr9 $lr8 $lr7 $lr6 $lr5 $lr4 $lr3 $lr2 $lr1 --title 'ResNet152 in 50 Epochs(Loss)' --out ./output/resultImages/resnet152_lr_loss.jpg
# python tools/analysis_tools/analyze_logs.py plot_curve $resnet152_json_files --keys accuracy --legend $lr9 $lr8 $lr7 $lr6 $lr5 $lr4 $lr3 $lr2 $lr1 --title 'ResNet152 in 50 Epochs(Accuracy)' --out ./output/resultImages/resnet152_lr_accuracy.jpg