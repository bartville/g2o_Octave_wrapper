function out = draw_VERTEX_XY(data, profile_time = false)
  time_plot = time();
  % keep on drawing on the same canvas
  hold on;
  plot([data(:).x], [data(:).y], "*b");

  if profile_time
    printf("draw_VERTEX_XY| plot time: %f\n", time() - time_plot);
  end

end
