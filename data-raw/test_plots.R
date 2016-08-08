cent <- length(V(NVC_graph)$name)
g <- make_ego_graph(NVC_graph, 3, nodes = cent)[[1]]
t <- igraph_to_networkD3(g)
t$nodes$group <- get.vertex.attribute(g, "CLASSIFICATION_LEVEL_NAME")
t$nodes$common <- get.vertex.attribute(g, "scientificName")

forceNetwork(t$links,
             t$nodes,
             NodeID = 'common',
             Group = 'group',
             fontSize = 18)
