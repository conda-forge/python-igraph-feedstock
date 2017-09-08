import igraph as ig
g = ig.Graph.Tree(127,2)
g.write_graphml('test.graphml')
tree = ig.Graph.Read_GraphML('test.graphml')
