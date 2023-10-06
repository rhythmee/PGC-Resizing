#Graph attention network

import torch
import torch.nn as nn
from torch_geometric.nn import GATConv
from torch_geometric.data import Data, DataLoader

# GAT model
class GATModel(nn.Module):
    def __init__(self, in_channels, out_channels, num_heads):
        super(GATModel, self).__init__()
        self.conv1 = GATConv(in_channels, out_channels, heads=num_heads)
    
    def forward(self, x, edge_index):
        x = self.conv1(x, edge_index)
        return x

# define function 
def create_complete_edges(num_nodes):
    node_combinations = torch.combinations(torch.arange(num_nodes), with_replacement=False)
    edges = node_combinations.t().contiguous()
    return edges

def create_graph_data(num_nodes, num_edges, num_features):
    #edges = torch.randint(num_nodes, size=(2, num_edges), dtype=torch.long)
    edges = create_complete_edges(num_nodes)
    x = torch.randn(num_nodes, num_features) #TODO
    return Data(x=x, edge_index=edges, y=None)


# Graph training
graph_A = create_graph_data(num_nodes=5, num_edges=10, num_features=16)

print(graph_A)
print("")
print(graph_A.x) #feature vector matrix (NxF)
print("")
print(graph_A.edge_index)

model = GATModel(in_channels=16, out_channels=16, num_heads=1)
optimizer = torch.optim.Adam(model.parameters(), lr=0.01)
criterion = nn.MSELoss()  # MSE loss func

loader = DataLoader([graph_A], batch_size=1, shuffle=True)

# test
output = model(graph_A.x, graph_A.edge_index)
print("")
print(output)
print("")
print(output.shape)

#model.train()
#for epoch in range(100):
#    for batch in loader:
#        optimizer.zero_grad()
#        output = model(batch.x, batch.edge_index)
#        pooled_output = torch.mean(output, dim=0)  # average pooling
#        target_vector = torch.randn(16)  # random reference vector (todo)
#        loss = criterion(pooled_output, target_vector)
#        loss.backward()
#        optimizer.step()
