function out = draw_EDGE_SE2_XY(data_edge_se2_xy, data_vertex_se2, data_vertex_xy)
  num_edges = size(data_edge_se2_xy, 2);

  for e = 1:num_edges
    index_from = find([data_vertex_se2.id] == data_edge_se2_xy(e).id_from);
    index_to = find([data_vertex_xy.id] == data_edge_se2_xy(e).id_to);
    if index_from && index_to
      hold on;
      plot([data_vertex_se2(index_from).x; data_vertex_xy(index_to).x], ...
           [data_vertex_se2(index_from).y; data_vertex_xy(index_to).y], ...
           "color", "m");
    else
      error('draw_EDGE_SE2_XY| Edge_SE2 pointing to non-existing Vertex');
    end
  end

end
