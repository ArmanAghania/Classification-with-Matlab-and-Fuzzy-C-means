clear;
clc;
close all;

X = load('Features.txt');
data_target_all = load('True_Labels_5_classes.txt');
X(:,11) = data_target_all(:,end);

preprocess; % 1. Fill missing 2. Remove outliers 3. Normalize

LDA_plot; % 1. LDA 2. Plot

fuzzy_plot; % 1. Fuzzy C-means 2. Plot

% Preparing data for Classification

XY = Y;
XY(:,11) = T;
