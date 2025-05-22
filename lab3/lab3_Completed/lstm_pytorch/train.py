import torch
from torch import nn, optim
from torch.autograd import Variable
from torch.utils.data import DataLoader
from torchvision import transforms
from torchvision import datasets

# 定义超参数
batch_size = 100
learning_rate = 1e-3
num_epoches = 20

# 准备训练集
train_set = datasets.MNIST(root='./', train=True, transform=transforms.ToTensor(), download=False)
train_loader = DataLoader(train_set, batch_size=batch_size, shuffle=True)

# 定义RNN模型
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



model = Rnn(28, 128, 1, 10) # 图片大小是28x28

criterion = nn.CrossEntropyLoss()
optimizer = optim.Adam(model.parameters(), lr=learning_rate)

# 开始训练
for epoch in range(num_epoches):
    model.train()
    print('epoch {}'.format(epoch + 1))
    print('**************************************')
    running_loss = 0.0
    running_acc = 0.0
    for i, data in enumerate(train_loader, 1):
        img, label = data
        b, c, h, w = img.size()
        assert c == 1, 'channel must be 1'
        img = img.squeeze(1)
        img = Variable(img)
        label = Variable(label)
        # 前向传播
        out = model(img)
        loss = criterion(out, label)
        running_loss += loss.data.item() * label.size(0)
        _, pred = torch.max(out, 1)
        num_correct = (pred == label).sum()
        running_acc += num_correct.data.item()
        # 反向传播
        optimizer.zero_grad()
        loss.backward()
        optimizer.step()
        
        if i % 300 == 0:
            print('[{}/{}] Loss: {:.6f}, Acc: {:.6f}'.format(
                epoch + 1, num_epoches,
                running_loss / (batch_size * i),
                running_acc / (batch_size * i)))
        
    print('Finish {} epoch, Loss: {:.6f}, Acc: {:.6f}'.format(
        epoch + 1,
        running_loss / (len(train_set)),
        running_acc / (len(train_set))))
        
# 保存模型
torch.save(model.state_dict(), './weight.pth')

print('done')
