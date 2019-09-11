function out = plotGraph(g2o_data, plot_edge = false)
  out = figure(1);
  axis("equal");

  % 2D Plot
  if isfield(g2o_data, 'VERTEX_XY')
    draw_VERTEX_XY(g2o_data.VERTEX_XY);
  end
  if isfield(g2o_data, 'VERTEX_SE2')
    draw_VERTEX_SE2(g2o_data.VERTEX_SE2);
  end
  if plot_edge && isfield(g2o_data, 'EDGE_SE2')
    draw_EDGE_SE2(g2o_data.EDGE_SE2, g2o_data.VERTEX_SE2);
  end
  ## if isfield(g2o_data, 'EDGE_BEARING_SE2_XY')
  ##   % draw_EDGE_BEARING_SE2_XY(g2o_Data.EDGE_BEARING_SE2_XY);
  ## end
  if plot_edge && isfield(g2o_data, 'EDGE_SE2_XY')
    draw_EDGE_SE2_XY(g2o_data.EDGE_SE2_XY, g2o_data.VERTEX_SE2, g2o_data.VERTEX_XY);
  end

  % 3D Plot
  if isfield(g2o_data, 'VERTEX_TRACKXYZ')
    draw_VERTEX_TRACKXYZ(g2o_data.VERTEX_TRACKXYZ);
  end
  if isfield(g2o_data, 'VERTEX_SE3_QUAT')
    draw_VERTEX_SE3_QUAT(g2o_data.VERTEX_SE3_QUAT, true);
  end
  if plot_edge && isfield(g2o_data, 'EDGE_SE3_QUAT')
    draw_EDGE_SE3_QUAT(g2o_data.EDGE_SE3_QUAT, g2o_data.VERTEX_SE3_QUAT);
  end


  drawnow;

endfunction
