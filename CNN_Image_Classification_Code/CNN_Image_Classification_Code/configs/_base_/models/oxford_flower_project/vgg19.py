# model settings
model = dict(
    type='ImageClassifier',
    backbone=dict(type='VGG', depth=19, num_classes=17),
    neck=None,
    head=dict(
        type='ClsHead',
        loss=dict(type='CrossEntropyLoss', loss_weight=1.0),
        topk=(1,),
    ))
