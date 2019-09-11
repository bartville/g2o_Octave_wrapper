function out = VERTEX_SE2(elements)
  out.id = str2double(elements{2});
  out.x = str2double(elements{3});
  out.y = str2double(elements{4});
  out.theta = str2double(elements{5});
end
