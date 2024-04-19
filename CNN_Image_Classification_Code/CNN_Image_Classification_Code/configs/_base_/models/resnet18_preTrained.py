# model settings

model = dict(
    type='ImageClassifier',
    backbone=dict(
        type='ResNet',
        depth=18,
        num_stages=4,
        out_indices=(3, ),
        init_cfg=dict(type='Pretrained', checkpoint='https://download.openmmlab.com/mmclassification/v0/resnet/resnet18_batch256_imagenet_20200708-34ab8f90.pth'),
        style='pytorch'),
    neck=dict(type='GlobalAveragePooling'),
    head=dict(
        type='LinearClsHead',
        num_classes=17,
        in_channels=512,
        loss=dict(type='CrossEntropyLoss', loss_weight=1.0),
    ))