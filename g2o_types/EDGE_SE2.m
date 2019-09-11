function out = EDGE_SE2(elements)
  out.id_from = str2double(elements{2});
  out.id_to = str2double(elements{3});
  out.x = str2double(elements{4});
  out.y = str2double(elements{5});
  out.theta = str2double(elements{6});
  out.Omega = [str2double(elements{7}), str2double(elements{8}),  str2double(elements{9});
               0,                       str2double(elements{10}), str2double(elements{11}),
               0,                       0,                        str2double(elements{12})];
end
