function out = draw_VERTEX_TRACKXYZ(data, profile_time = false)

  time_plot = time();

  % keep on drawing on the same canvas
  hold on;
  plot3([data(:).x], [data(:).y], [data(:).z], "*b");

  if profile_time
    printf("draw_VERTEX_TRACKXYZ| plot time: %f\n", time() - time_plot);
  end

end
