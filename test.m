#! /bin/octave -qf
clear;
clc;

addpath './graphics/'

% get list of arguments
arg_list = argv ();

% load g2o file
g2o_file = arg_list{1};
printf("\nLoading g2o file: %s\n", g2o_file);
data = load_g2o(g2o_file);

printf("Visualizing loaded Graph\n");
h = plotGraph(data, true);

waitfor(h);
