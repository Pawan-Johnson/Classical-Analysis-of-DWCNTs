func = @FunctionAllEnergies;
z1 = [];
z2 = [];

for i=-1.5:0.5:1.5
    for j=-1.5:0.5:1.5
       z10= fsolve(func,[i j]);
       if( isempty(z1) )
        z1(end +1) = z10(1);
        z2(end +1) = z10(2);
       end
       if(z1(end) ~= z10(1))
           z1(end +1) = z10(1);
           z2(end +1) = z10(2);
       end
     end
end
   