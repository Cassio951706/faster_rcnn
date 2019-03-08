function startup()
% startup()
% --------------------------------------------------------
% Faster R-CNN
% Copyright (c) 2015, Shaoqing Ren
% Licensed under The MIT License [see LICENSE for details]
% --------------------------------------------------------

    curdir = fileparts(mfilename('fullpath'));
    addpath(genpath(fullfile(curdir, 'utils')));
    addpath(genpath(fullfile(curdir, 'functions')));
    addpath(genpath(fullfile(curdir, 'bin')));
    addpath(genpath(fullfile(curdir, 'experiments')));
    addpath(genpath(fullfile(curdir, 'imdb')));

    mkdir_if_missing(fullfile(curdir, 'datasets'));

    mkdir_if_missing(fullfile(curdir, 'external'));

    % add caffe matlab path   
    caffe_path = '/home/du/gitcode/caffe-fast-rcnn/matlab/';
    addpath(genpath(caffe_path));
    
    mkdir_if_missing(fullfile(curdir, 'imdb', 'cache'));

    mkdir_if_missing(fullfile(curdir, 'output'));

    mkdir_if_missing(fullfile(curdir, 'models'));

    fprintf('fast_rcnn startup done\n');
end
