function draw_VERTEX_SE3_QUAT(data, draw_axes = false)
  % keep on drawing on the same canvas
  hold on;
  plot3([data(:).x], [data(:).y], [data(:).z], 'o', "markerfacecolor", "m");

  if draw_axes
    axes_length = 1.5;
    % TODO vectorize
    for v = 1:size(data,2)
      x1 = data(v).quat * [axes_length 0 0]';
      y1 = data(v).quat * [0 axes_length 0]';
    	z1 = data(v).quat * [0 0 axes_length]';
    	hold on
    	plot3([data(v).x ;data(v).x + x1(1)],
            [data(v).y; data(v).y + x1(2)],
            [data(v).z; data(v).z + x1(3)],
            "color", "r", ...
            "linewidth", 2);
    	plot3([data(v).x; data(v).x + y1(1)],
            [data(v).y; data(v).y + y1(2)],
            [data(v).z; data(v).z + y1(3)],
            "color", "g", ...
            "linewidth", 2);
    	plot3([data(v).x; data(v).x + z1(1)],
            [data(v).y; data(v).y + z1(2)],
            [data(v).z; data(v).z + z1(3)],
            "color", "b", ...
            "linewidth", 2);
    end %for
  end %if
end
