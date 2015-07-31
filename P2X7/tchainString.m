function str = chainString(x,xp)
global parami;

        str = [parami('1') '= [' num2str(x(1),'%10.5e'),', ',num2str(xp(1),'%10.5e'),']'];
        for i=2:length(x)
            str = [str ', ' parami(num2str(i)) '= [' num2str(x(i),'%10.5e'),', ',num2str(xp(i),'%10.5e'),']'];
        end
end

