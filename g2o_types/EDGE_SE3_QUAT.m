function out = EDGE_SE3_QUAT(elements)
  out.id_from = str2double(elements{2});
  out.id_to = str2double(elements{3});
  out.x = str2double(elements{4});
  out.y = str2double(elements{5});
  out.z = str2double(elements{6});
  out.quat = Quaternion ([str2double(elements{10}),
                          str2double(elements{7}),
                          str2double(elements{8}),
                          str2double(elements{9})]');
  out.Omega = [str2double(elements{11}), str2double(elements{12}), str2double(elements{13}), str2double(elements{14}), str2double(elements{15}), str2double(elements{16});
               0,                        str2double(elements{17}), str2double(elements{18}), str2double(elements{19}), str2double(elements{20}), str2double(elements{21});
               0,                        0,                        str2double(elements{22}), str2double(elements{23}), str2double(elements{24}), str2double(elements{25});
               0,                        0,                        0,                        str2double(elements{26}), str2double(elements{27}), str2double(elements{28});
               0,                        0,                        0,                        0,                        str2double(elements{29}), str2double(elements{30});
               0,                        0,                        0,                        0,                        0,                        str2double(elements{31})];
end
