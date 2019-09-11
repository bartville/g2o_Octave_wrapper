function out = EDGE_BEARING_SE2_XY(elements)
  out.id_from = str2double(elements{2});
  out.id_to = str2double(elements{3});
  out.bearing = str2double(elements{4});
  out.Omega = str2double(elements{5});
end
