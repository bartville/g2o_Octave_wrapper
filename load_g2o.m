function data = load_g2o(filename)

  % load g2o types
  source 'g2o_types/g2oTypes.m'
  addpath 'g2o_types'
  
  %open the file
  fid = fopen(filename, 'r');

  while true
      %get current line
      c_line = fgetl(fid);

      %stop if EOF
      if c_line == -1
          break;
      end

      %Split the line using space as separator
      elements = strsplit(c_line,' ');
      current_tag = elements{1};

      % populate the dataset
      switch(current_tag)
        case type_VERTEX_XY
          data.VERTEX_XY(end+1) = VERTEX_XY(elements);
        case type_VERTEX_SE2
          data.VERTEX_SE2(end+1) = VERTEX_SE2(elements);
        case type_EDGE_SE2
          data.EDGE_SE2(end+1) = EDGE_SE2(elements);
        case type_EDGE_BEARING_SE2_XY
          data.EDGE_BEARING_SE2_XY(end+1) = EDGE_BEARING_SE2_XY(elements);
        case type_EDGE_SE2_XY
          data.EDGE_SE2_XY(end+1) = EDGE_SE2_XY(elements);
        case type_VERTEX_TRACKXYZ
          data.VERTEX_TRACKXYZ(end+1) = VERTEX_TRACKXYZ(elements);
        case type_EDGE_SE3_TRACKXYZ
          data.EDGE_SE3_TRACKXYZ(end+1) = EDGE_SE3_TRACKXYZ(elements);
        case type_VERTEX_SE3_QUAT
          data.VERTEX_SE3_QUAT(end+1) = VERTEX_SE3_QUAT(elements);
        case type_EDGE_SE3_QUAT
          data.EDGE_SE3_QUAT(end+1) = EDGE_SE3_QUAT(elements);
        case type_PARAMS_SE3OFFSET
          data.PARAMS_SE3OFFSET(end+1) = PARAMS_SE3OFFSET(elements);
        otherwise
          printf("Unregistered type %s\n", current_tag);
      end % switch
  end % while
end % function
