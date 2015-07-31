classdef moab
   properties
       numberOfNodes = 1
       procsPerNode = 6
       WallTime = '08:00:00'
       % Please use metaq unless you require a specific node type
       queue = 'metaq'
       % All jobs should specify an account or RAPid
       account = 'rtg-955-aa'
       % Specify the memory per process required
       pmem = '1700m'
       %You may use otherOptions to append a string to the qsub command
       % e.g.
       % otherOptions = '-M email@address.com -m bae'
       otherOptions = '-M metapfhor@gmail.com'
   end
end





