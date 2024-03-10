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
json_files=$(find "./output/alexnet" -type f -name "alexnet_*.json" | tail -n $n | tr '\n' ' ')
echo "found $json_files"

#python tools/analysis_tools/analyze_logs.py plot_curve $json_files --keys loss --legend lr=$lr1 lr=$lr2 lr=$lr3 lr=$lr4 --title 'AlexNet in 10 Epochs' --out ./output/resultImages/Alexnet_lr_loss.jpg
#python tools/analysis_tools/analyze_logs.py plot_curve $json_files --keys accuracy --legend lr=$lr1 lr=$lr2 lr=$lr3 lr=$lr4 --title 'AlexNet in 10 Epochs' --out ./output/resultImages/Alexnet_lr_accuracy.jpg
python tools/analysis_tools/analyze_logs.py plot_curve $json_files --keys accuracy --legend $lr9 $lr8 $lr7 $lr6 $lr5 $lr4 $lr3 $lr2 $lr1 --title 'AlexNet in 50 Epochs(Accuracy)' --out ./output/resultImages/Alexnet_lr_accuracy.jpg
python tools/analysis_tools/analyze_logs.py plot_curve $json_files --keys loss --legend $lr9 $lr8 $lr7 $lr6 $lr5 $lr4 $lr3 $lr2 $lr1 --title 'AlexNet in 50 Epochs(Loss)' --out ./output/resultImages/Alexnet_lr_loss.jpg