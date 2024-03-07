# model settings, modified from resnet18_cifar.py
model = dict(
    type='ImageClassifier',
    backbone=dict(
        type='AlexNet',
        num_classes=17,),
    neck=None,
head=dict(
        type='ClsHead',
        loss=dict(type='CrossEntropyLoss', loss_weight=1.0),
        topk=(1, 5)
    )
    )
