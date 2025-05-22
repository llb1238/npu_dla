import time
import torch
from torch import nn, optim
from torch.autograd import Variable
from torch.utils.data import DataLoader
from torchvision import transforms
from torchvision import datasets

# 定义 Recurrent Network 模型
class Rnn(nn.Module):
    def __init__(self, in_dim, hidden_dim, n_layer, n_class):
        super(Rnn, self).__init__()
        self.n_layer = n_layer
        self.hidden_dim = hidden_dim
        self.lstm = nn.LSTM(in_dim, hidden_dim, n_layer, batch_first=True)
        self.classifier = nn.Linear(hidden_dim, n_class)
        
    def forward(self, x):
        out, _ = self.lstm(x)
        out = out[:, -1, :]
        out = self.classifier(out)
        return out

if __name__ == '__main__':
    # Use pretrained model
    model = Rnn(28, 128, 1, 10) # 图片大小是28x28
    model.load_state_dict(torch.load('weight_LSTM.pth'))
    print(model)

    # 准备MNIST测试集
    batch_size = 100
    test_dataset = datasets.MNIST(root='./', train=False, transform=transforms.ToTensor())
    # test_loader = DataLoader(test_dataset)
    test_loader = DataLoader(test_dataset, batch_size=batch_size)

    criterion = nn.CrossEntropyLoss()
    model.eval()
    eval_loss = 0.0
    eval_acc = 0.0

    t0 = time.time()
    # 开始测试
    for data in test_loader:
        img, label = data
        _, c, _, _ = img.size()
        assert c == 1, 'channel must be 1'
        img = img.squeeze(1)
        img = Variable(img)
        label = Variable(label)
        out = model(img)
        loss = criterion(out, label)
        eval_loss += loss.data.item() * label.size(0)
        _, pred = torch.max(out, 1)
        num_correct = (pred == label).sum()
        eval_acc += num_correct.data.item()
        # print(img)
        # print()
        # print(label)
        # print()
        # print(out)
        # break
    
    t1 = time.time()
    print('{} images tested in {:.3f}s'.format(len(test_dataset), t1 - t0))
    print('Test Loss: {:.6f}, Acc: {:.6f}'.format(
        eval_loss / (len(test_dataset)), eval_acc / (len(test_dataset))))
