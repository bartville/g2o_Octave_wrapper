function out = PARAMS_SE3OFFSET(elements)
  out.id = str2double(elements{2});
  out.x = str2double(elements{3});
  out.y = str2double(elements{4});
  out.z = str2double(elements{5});
  out.quat = Quaternion ([str2double(elements{9}),
                          str2double(elements{6}),
                          str2double(elements{7}),
                          str2double(elements{8})]');
end
