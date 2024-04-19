# optimizer, modified from cifar10_bs128.py
#optimizer = dict(type='SGD', lr=1e-1, momentum=0.9, weight_decay=1e-3)
optimizer = dict(type='SGD', lr=1e-2, momentum=0.9, weight_decay=0.0005)
#optimizer =  dict(type='Adam', lr=0.1, betas=(0.9, 0.999), eps=1e-08, weight_decay=0.0005,amsgrad=False)
#optimizer = dict(type='SGD', lr=1e-3, momentum=0.9, weight_decay=1e-9)
#optimizer = dict(type='SGD', lr=1e-4, momentum=0.9, weight_decay=1e-12)

optimizer_config = dict(grad_clip=None)
# learning policy
lr_config = dict(policy='step', step=[100])
runner = dict(type='EpochBasedRunner', max_epochs=150)
