import matplotlib.pyplot as plt
import json

#plot a graph epoch vs training accruacy
def plotGraph(filePath,xName,yName,color):
    with open(filePath, encoding='utf-8') as f:
            next(f)
            xAxis, yAxis = zip(*[(json.loads(line)[xName], json.loads(line)[yName]) for line in f])     
            plt.grid(True)
            plt.plot(xAxis,yAxis, color=color, marker='o')
            plt.xlabel(xName)
            plt.ylabel(yName)
            plt.show()       

plotGraph('./output/alexnet/20240308_023157.log.json','epoch','accuracy_top-1','maroon')


# xAxis = [key for key, value in dictionary.items()]
# yAxis = [value for key, value in dictionary.items()]


# plt.grid(True)

# ## LINE GRAPH ##
# plt.plot(xAxis,yAxis, color='maroon', marker='o')
# plt.xlabel('variable')
# plt.ylabel('value')

# ## BAR GRAPH ##
# fig = plt.figure()
# plt.bar(xAxis,yAxis, color='maroon')
# plt.xlabel('variable')
# plt.ylabel('value')

# plt.show()