syms EI(z) EII(z) E0I E0II N k d p L c Lm m1 m2 z1 z2;
N = 6;
k = 0.3;
p = N^(-0.32);
Lm = 1.5;
L = 6;
L2 = 3;
d = 3.4;

E0I = 0;
E0II = 0;

EI = (E0I + N*k*z*z/2 - N*k*z*z*z/(3*L) - N*k*d*d*d*atan(z/d)/L) -N*k*d*d*(sec(atan(z/d)-1)+c/d^6+ p*N*k*d*d*( L - z )/(2*L));
EII = (E0II - N*k*z*z*z/(3*L) + c/(d^6) + p*N*k*d*d*( L - z )/(2*L));

CouplingTerm1 = k*sqrt( (z2 - z1)^2 + L2^2 )*(z1 - z2)/(sqrt( (z2 - z1)^2 + L2^2 ));
CouplingTerm2 = -1*CouplingTerm1;
DampingTerm1 = Eta*z1dot;
DampingTerm2 = Eta*z2dot;
PotentialTerms1 = N*k*z1 - N*k*z1*z1/L - N*k*(d^4)/(L*(d^2 + z1^2)) - p*N*k*d*d/(2*L) - N*k*d*d*z1*sec(atan(z1/d))/(d*d+z1*z1);
PotentialTerms2 = N*k*z2 - N*k*z2*z2/L - N*k*(d^4)/(L*(d^2 + z2^2)) - p*N*k*d*d/(2*L) - N*k*d*d*z2*sec(atan(z2/d))/(d*d+z2*z2);


