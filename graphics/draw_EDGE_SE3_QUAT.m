function out = draw_EDGE_SE3_QUAT(data_edge, data_vertex, profile_time = false);
  time_plot = time();

  num_edges = size(data_edge, 2);

  % start = time();
  data_from = zeros(num_edges, 3);
  data_to   = zeros(num_edges, 3);
  for e = 1:num_edges
    index_from = find([data_vertex.id] == data_edge(e).id_from);
    index_to = find([data_vertex.id] == data_edge(e).id_to);
    if index_from && index_to
      data_from(e,:) = [data_vertex(index_from).x,
                        data_vertex(index_from).y,
                        data_vertex(index_from).z];
      data_to(e,:)   = [data_vertex(index_to).x,
                        data_vertex(index_to).y,
                        data_vertex(index_to).z];
    else
      error('draw_EDGE_SE3_QUAT| Edge_SE3_QUAT pointing to non-existing Vertex');
    end
  end
    plot3([data_from(:,1); data_to(:,1)], ...
          [data_from(:,2); data_to(:,2)], ...
          [data_from(:,3); data_to(:,3)], ...
          "color", "b");
  % cpy_no_for_time = time() - start

  if profile_time
    printf("draw_EDGE_SE3_QUAT| plot time: %f\n", time() - time_plot);
  end


end
