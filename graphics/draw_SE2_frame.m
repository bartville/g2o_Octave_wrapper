function out = draw_SE2_frame(x,y,theta)

  % set arrow length
  l = 0.5;

  hold on;
  plot([x; x + l*cos(theta)], [y;  y + l*sin(theta)], ...
       "color", "r", ...
       "linewidth", 2);
  hold on;
  plot([x; x + l*cos(theta+pi/2)], [y;  y + l*sin(theta+pi/2)], ...
       "color", "g", ...
       "linewidth", 2);
end
