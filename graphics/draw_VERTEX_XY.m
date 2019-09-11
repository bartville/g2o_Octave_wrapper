function out = draw_VERTEX_XY(data)
  % keep on drawing on the same canvas
  hold on;
  plot([data(:).x], [data(:).y], "*b");
end
