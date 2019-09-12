function draw_VERTEX_SE3_QUAT(data, draw_axes = false, profile_time = false)
  time_plot_init = time();

  num_vertex = size(data,2);

  % keep on drawing on the same canvas
  hold on;
  plot3([data(:).x], [data(:).y], [data(:).z], 'o', "markerfacecolor", "m");


  if profile_time
    printf("draw_VERTEX_SE3_QUAT| plot time vertex: %f\n", time() - time_plot_init);
  end

  time_plot = time();
  if draw_axes
    data_x = zeros(num_vertex, 1)';
    data_y = zeros(num_vertex, 1)';
    data_z = zeros(num_vertex, 1)';

    x1   = zeros(num_vertex, 3);
    x1_x = zeros(num_vertex, 1)';
    x1_y = zeros(num_vertex, 1)';
    x1_z = zeros(num_vertex, 1)';

    y1   = zeros(num_vertex, 3);
    y1_x = zeros(num_vertex, 1)';
    y1_y = zeros(num_vertex, 1)';
    y1_z = zeros(num_vertex, 1)';

    z1   = zeros(num_vertex, 3);
    z1_x = zeros(num_vertex, 1)';
    z1_y = zeros(num_vertex, 1)';
    z1_z = zeros(num_vertex, 1)';

    axes_length = 1.5;
    for v = 1:num_vertex
      x1(v,:) = data(v).quat * [axes_length 0 0]';
      x1_x(v) = data(v).x + x1(v,1);
      x1_y(v) = data(v).y + x1(v,2);
      x1_z(v) = data(v).z + x1(v,3);
      y1(v,:) = data(v).quat * [0 axes_length 0]';
      y1_x(v) = data(v).x + y1(v,1);
      y1_y(v) = data(v).y + y1(v,2);
      y1_z(v) = data(v).z + y1(v,3);
    	z1(v,:) = data(v).quat * [0 0 axes_length]';
      z1_x(v) = data(v).x + z1(v,1);
      z1_y(v) = data(v).y + z1(v,2);
      z1_z(v) = data(v).z + z1(v,3);

      data_x(v) = data(v).x;
      data_y(v) = data(v).y;
      data_z(v) = data(v).z;
    end %for

    hold on
    plot3([data_x; x1_x],
          [data_y; x1_y],
          [data_z; x1_z],
          "color", "r", ...
          "linewidth", 2);
    plot3([data_x; y1_x],
          [data_y; y1_y],
          [data_z; y1_z],
          "color", "g", ...
          "linewidth", 2);
    plot3([data_x; z1_x],
          [data_y; z1_y],
          [data_z; z1_z],
          "color", "b", ...
          "linewidth", 2);
  end %if

  if profile_time
    printf("draw_VERTEX_SE3_QUAT| plot time axes  : %f\n", time() - time_plot);
    printf("draw_VERTEX_SE3_QUAT| plot time tot   : %f\n", time() - time_plot_init);
  end



end
