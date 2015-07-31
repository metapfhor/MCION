function str = chainString(x)
global parami;

        str = [parami('1') '= ' num2str(x(1),'%10.5e')];
        for i=2:length(x)/2
            str = [str ', ' parami(num2str(i)) '= ' num2str(x(i),'%10.5e')];
        end
end

