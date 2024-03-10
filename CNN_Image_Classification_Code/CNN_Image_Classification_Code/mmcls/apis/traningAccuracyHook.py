#try to evulate Training Accuracy after each epoch
import os.path as osp
import warnings

from mmcv.runner import Hook
from torch.utils.data import DataLoader


class TrainingAccuracyHook(Hook):

    def __init__(self, dataloader, interval=1, by_epoch=True, **eval_kwargs):
        if not isinstance(dataloader, DataLoader):
            raise TypeError('dataloader must be a pytorch DataLoader, but got'
                            f' {type(dataloader)}')
        self.dataloader = dataloader
        self.interval = interval
        self.eval_kwargs = eval_kwargs
        self.by_epoch = by_epoch
        print(dataloader)
    # def __init__(self, model):
    #     self.model = model

    # def after_epoch(self, runner):
    #     runner.model.evaluate()        
        
        

    def after_iter(self, runner):
        if not self.by_epoch or not self.every_n_epochs(runner, self.interval):
            return
        from mmcls.apis import single_gpu_test
        results = single_gpu_test(runner.model, self.dataloader, show=False)
        self.evaluate(runner, results)

    def evaluate(self, runner, results):
        eval_res = self.dataloader.dataset.evaluate(
            results, logger=runner.logger, **self.eval_kwargs)
        for name, val in eval_res.items():
            runner.log_buffer.output[name] = val
        runner.log_buffer.ready = True
        

    