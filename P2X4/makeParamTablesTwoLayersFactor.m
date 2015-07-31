


atp={'k1','k2','k3','k4','k5','k6'};
tbl1=makeParamTable(P2X4Inact2factor,atp,'ATP binding and unbinding rates');

r={'r1','r2','r3'};
tbl2=makeParamTable(P2X4Inact2factor,r,'ATP binding multipliers in IVM bound rows');

v={'v1','v2','v3'};
tbl3=makeParamTable(P2X4Inact2factor,v,'ATP unbinding multipliers in IVM bound rows');

ivm={'L1','L2','L3','L4','L5','L6'};

tbl4=makeParamTable(P2X4Inact2factor,ivm,'IVM binding and unbinding rates.');


ec={'delta','epsilon','mu'};

tbl5=makeParamTable(P2X4Inact2factor,ec,' EC\textsubscript{50} values for fourth order hill functions which govern IVM binding rates.');


desense={'kd1','ks1','kd2','ks2','kd3','ks3','kd4','ks4'};

tbl6=makeParamTable(P2X4Inact2factor,desense,'Desensitization and return from desensitization rates.');

act={'H0','H5','W2'};

tbl7=makeParamTable(P2X4Inact2factor,act,'Rates of activation and inactivation.');

io={'H3','H4'};

tbl8=makeParamTable(P2X4Inact2factor,io,'Rates of internalization and recycling.');


ts=datestr(now,30);


fid=fopen(['../tex/paramTable_' P2X4Inact2factor.name() '_' ts '.tex'],'w'); 

tbls={tbl1,tbl2,tbl3,tbl4,tbl5,tbl6,tbl7,tbl8};


for i=1:length(tbls)
    tbl=tbls{i};
    for j=1:size(tbl,1) 
        fprintf(fid, '%s\n', tbl{j}); 
    end 
    fprintf(fid,'%s\n','');
end

fclose(fid);