function out = draw_VERTEX_SE2(data) 
  draw_SE2_frame([data(:).x],
                 [data(:).y],
                 [data(:).theta]);
end
