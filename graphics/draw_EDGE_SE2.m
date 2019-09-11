function out = draw_EDGE_SE2(data_edge, data_vertex);
  num_edges = size(data_edge, 2);

  for e = 1:num_edges
    index_from = find([data_vertex.id] == data_edge(e).id_from);
    index_to = find([data_vertex.id] == data_edge(e).id_to);
    if index_from && index_to
      hold on;
      plot([data_vertex(index_from).x; data_vertex(index_to).x], ...
           [data_vertex(index_from).y; data_vertex(index_to).y], ...
           "color", "b");
    else
      error('draw_EDGE_SE2| Edge_SE2 pointing to non-existing Vertex');
    end
  end

end
