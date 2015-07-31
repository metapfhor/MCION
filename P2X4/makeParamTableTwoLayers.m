global baseParameters
% This script runs two simple examples of latexTable.m
% clc; clear input;



%% Example 2: using a MATLAB table as data input

% Please note: since the table datatype was introduced in MATLAB version r2013b,
% you cannot use this feature in older versions of MATLAB!
% Check MATLAB version:
DateNumberThisVersion = datenum(version('-date'),'mmmm dd, yyyy');
if DateNumberThisVersion < 735459 % MATLAB r2013b release day was datenumber 735459
    fprintf('\n\nCannot run example 2: This MATLAB version does not support datatype ''table''!\n');
    break;
end

fprintf('\n\nExample 2: using MATLAB table datatype as data input\n\n');

% Set up a MATLAB table (similar to example used in MATLAB docs):
% Please note that the resulting LaTex table is row-based, not
% column-based. So the LaTex table is a 'transposed' copy of the MATLAB table.
LastName = {'Smith';'Johnson';'Williams';'Jones';'Brown'};
Age = [38;43;38;40;49];
Height = [71;69;64;67;64];
% Weight = [176;163;131;133;119];
Weight={'abc';'ddddd';'131';'133';'119'};
T = table(Age,Height,Weight,'RowNames',LastName);

% Now use this table as input in our input struct:
input.data = T;

% Set the row format of the data values (in this example we want to use
% integers only):
input.dataFormat = {'%i'};

% Column alignment ('l'=left-justified, 'c'=centered,'r'=right-justified):
input.tableColumnAlignment = 'c';

% Switch table borders on/off:
input.tableBorders = 1;

% Switch to generate a complete LaTex document or just a table:
input.makeCompleteLatexDocument = 1;

% Now call the function to generate LaTex code:
latex = latexTable(input);
