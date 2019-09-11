function out = EDGE_SE2_XY(elements)
  out.id_from = str2double(elements{2});
  out.id_to = str2double(elements{3});
  out.x = str2double(elements{4});
  out.y = str2double(elements{5});
  out.Omega = [str2double(elements{6}), str2double(elements{7});
               0,                       str2double(elements{8})];
end
