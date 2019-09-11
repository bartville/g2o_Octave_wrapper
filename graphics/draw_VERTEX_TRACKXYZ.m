function out = draw_VERTEX_TRACKXYZ(data)
  % keep on drawing on the same canvas
  hold on;
  plot3([data(:).x], [data(:).y], [data(:).z], "*b");
end
