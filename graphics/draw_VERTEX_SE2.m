function out = draw_VERTEX_SE2(data, profile_time = false)
  time_plot = time();

  draw_SE2_frame([data(:).x],
                 [data(:).y],
                 [data(:).theta]);

   if profile_time
     printf("draw_VERTEX_SE2| plot time: %f\n", time() - time_plot);
   end


end
