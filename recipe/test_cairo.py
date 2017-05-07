import igraph as ig
G = ig.Graph.Famous('zachary')
G['layout'] = G.layout_fruchterman_reingold()
ig.plot(G, 'test.pdf')
