function out = plotGraph(g2o_data, full_plot = false)
  profile_time = true;

  plot_start_time = time();

  out = figure(1);
  axis("equal");

  g2o_data

  % 2D Plot
  if isfield(g2o_data, 'VERTEX_XY')
    draw_VERTEX_XY(g2o_data.VERTEX_XY, profile_time);
  end
  if isfield(g2o_data, 'VERTEX_SE2')
    draw_VERTEX_SE2(g2o_data.VERTEX_SE2, profile_time);
  end
  if isfield(g2o_data, 'EDGE_SE2')
    draw_EDGE_SE2(g2o_data.EDGE_SE2, g2o_data.VERTEX_SE2, profile_time);
  end
  ## if isfield(g2o_data, 'EDGE_BEARING_SE2_XY')
  ##   % draw_EDGE_BEARING_SE2_XY(g2o_Data.EDGE_BEARING_SE2_XY);
  ## end
  if isfield(g2o_data, 'EDGE_SE2_XY')
    draw_EDGE_SE2_XY(g2o_data.EDGE_SE2_XY, g2o_data.VERTEX_SE2, g2o_data.VERTEX_XY, profile_time);
  end

  % 3D Plot
  if isfield(g2o_data, 'VERTEX_TRACKXYZ')
    draw_VERTEX_TRACKXYZ(g2o_data.VERTEX_TRACKXYZ, profile_time);
  end
  if isfield(g2o_data, 'VERTEX_SE3_QUAT')
    draw_VERTEX_SE3_QUAT(g2o_data.VERTEX_SE3_QUAT, full_plot, profile_time);
  end
  if isfield(g2o_data, 'EDGE_SE3_QUAT')
    draw_EDGE_SE3_QUAT(g2o_data.EDGE_SE3_QUAT, g2o_data.VERTEX_SE3_QUAT, profile_time);
  end

  drawnow;

  printf('plotGraph time: %f \n', time()-plot_start_time);

endfunction
