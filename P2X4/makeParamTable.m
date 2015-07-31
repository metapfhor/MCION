function tbl = makeParamTable(model,k,caption)
global baseParameters



for i=1:length(k)
    Value(i)=baseParameters(k{i});
    Transitions{i}=texify(model.getParamTransitions(k{i}));
end


Transitions=cell(Transitions.');
Value=Value.';
T = table(Value,Transitions,'RowNames',texify(k));

% Now use this table as input in our input struct:
input.data = T;


% Set column labels (use empty string for no label):
% input.tableColLabels = {'Label','Value'};
% Set row labels (use empty string for no label):
input.tableColLabel = 'Label';

% Switch transposing/pivoting your table:
input.transposeTable = 0;

% Formatting-string to set the precision of the table values:
% For using different formats in different rows use a cell array like
% {myFormatString1,numberOfValues1,myFormatString2,numberOfValues2, ... }
% where myFormatString_ are formatting-strings and numberOfValues_ are the
% number of table columns or rows that the preceding formatting-string applies.
% Please make sure the sum of numberOfValues_ matches the number of columns or
% rows in input.tableData!
%
input.dataFormat = {'%.3e',1}; % three digits precision for first two columns, one digit for the last

% Define how NaN values in input.tableData should be printed in the LaTex table:
input.dataNanString = '-';

% Column alignment in Latex table ('l'=left-justified, 'c'=centered,'r'=right-justified):
input.tableColumnAlignment = 'c';

% Switch table borders on/off:
input.tableBorders = 1;

% LaTex table caption:
input.tableCaption = caption;

% LaTex table label:
input.tableLabel = '';

% Switch to generate a complete LaTex document or just a table:
input.makeCompleteLatexDocument = 0;

% call latexTable:
tbl = latexTable(input);
% 
% fid=fopen('paramTable.tex','w'); 
% for i=1:size(latex,1) 
% fprintf(fid, '%s\n', latex{i}); 
% end 
% fclose(fid);

end