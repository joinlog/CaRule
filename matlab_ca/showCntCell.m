%% Import data from text file.
% Script for importing data from the following text file:
%
%    E:\code\CaRule\matlab_ca\countCell.csv
%
% To extend the code to different selected data or a different text file,
% generate a function instead of a script.

% Auto-generated by MATLAB on 2018/01/25 14:07:29

%% Initialize variables.
filename = 'E:\code\CaRule\matlab_ca\countCell.csv';
delimiter = ',';

%% Format string for each line of text:
%   column1: double (%f)
%	column2: double (%f)
%   column3: double (%f)
% For more information, see the TEXTSCAN documentation.
formatSpec = '%f%f%f%[^\n\r]';

%% Open the text file.
fileID = fopen(filename,'r');

%% Read columns of data according to format string.
% This call is based on the structure of the file used to generate this
% code. If an error occurs for a different file, try regenerating the code
% from the Import Tool.
dataArray = textscan(fileID, formatSpec, 'Delimiter', delimiter,  'ReturnOnError', false);

%% Close the text file.
fclose(fileID);

%% Post processing for unimportable data.
% No unimportable data rules were applied during the import, so no post
% processing code is included. To generate code which works for
% unimportable data, select unimportable cells in a file and regenerate the
% script.

%% Allocate imported array to column variable names
VarName1 = dataArray{:, 1};
VarName2 = dataArray{:, 2};
VarName3 = dataArray{:, 3};

%%
[m,n]=size(VarName1);
t=1:m;
plot(t,VarName1,'+b',t,VarName2,'*r',t,VarName3,'og');
%legend('a','Location','best')
title('Title','FontName','Times New Roman','FontWeight','Bold','FontSize',16)
xlabel('Time','FontName','Times New Roman','FontSize',14)
ylabel('Cell Number','FontName','Times New Roman','FontSize',14,'Rotation',90)
%axis auto equal
%% Clear temporary variables
clearvars filename delimiter formatSpec fileID dataArray ans;