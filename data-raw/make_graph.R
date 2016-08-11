# BSD_2_clause

NVC_graph <- USNVC::make_igraph(unit_data)

topClass <- lapply(igraph::V(NVC_graph)$name,
                   FUN = USNVC::get_top_class,
                   g = NVC_graph)

NVC_graph <- igraph::set_vertex_attr(NVC_graph,
                                     "topClass",
                                     value = unlist(topClass))

devtools::use_data(NVC_graph, overwrite = TRUE)
