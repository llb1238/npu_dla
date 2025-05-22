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

# Use pretrained model
model = Rnn(28, 128, 1, 10) # 图片大小是28x28
model.load_state_dict(torch.load('weight_LSTM.pth'))
print(model.state_dict())

example = torch.rand(100, 28, 28)
trace_script_module = torch.jit.trace(model, example)
trace_script_module.save('model.pt')

print('done')
