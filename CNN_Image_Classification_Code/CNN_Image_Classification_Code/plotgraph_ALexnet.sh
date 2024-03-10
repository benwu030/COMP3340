#!/bin/bash

n=1
lr1="0.3"
lr2="0.08"
lr3="0.002"
lr4="0.0002"
json_files=$(find "./output/alexnet" -type f -name "alexnet_*.json" | tail -n $n | tr '\n' ' ')
echo "found $json_files"

#python tools/analysis_tools/analyze_logs.py plot_curve $json_files --keys loss --legend lr=$lr1 lr=$lr2 lr=$lr3 lr=$lr4 --title 'AlexNet in 10 Epochs' --out ./output/resultImages/Alexnet_lr_loss.jpg
#python tools/analysis_tools/analyze_logs.py plot_curve $json_files --keys accuracy --legend lr=$lr1 lr=$lr2 lr=$lr3 lr=$lr4 --title 'AlexNet in 10 Epochs' --out ./output/resultImages/Alexnet_lr_accuracy.jpg
python tools/analysis_tools/analyze_logs.py plot_curve $json_files --keys loss --legend lr=$lr1 --title 'AlexNet in 10 Epochs' --out ./output/resultImages/Alexnet_lr_loss.jpg