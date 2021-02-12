function Zdot = DEAllEnergies(t,Z)
Constants;

z1 = Z(1);
z2 = Z(2);
z1dot = Z(3);
z2dot = Z(4);
CouplingTerm1 = -1*(sqrt( (z2 - z1)^2 + L2^2 )- L2)*(z1 - z2)/(sqrt( (z2 - z1)^2 + L2^2 ));
CouplingTerm2 = -1*CouplingTerm1;
DampingTerm = -1*Beta*(z1-z2)^2*(z1dot - z2dot)/((z1-z2)^2 + L2^2);
PotentialTerms1H =  N*z1*z1 + p*N*d*d/(2);
PotentialTerms2H =  N*z2*z2 + p*N*d*d/(2);
PotentialTerms1L = -N*z1 + N*z1*z1 + N*(d^4)/(d^2 + z1^2) + p*N*d*d/(2) + N*d*z1/sqrt(d*d+z1*z1);
PotentialTerms2L = -N*z2 + N*z2*z2 + N*(d^4)/(d^2 + z2^2) + p*N*d*d/(2) + N*d*z2/sqrt(d*d+z2*z2);
Zdot = zeros(4,1);
Zdot(1) = Z(3);
Zdot(2) = Z(4);
Zdot(3) = (DampingTerm + CouplingTerm1  + PotentialTerms1L*heaviside(z1-Lm) + PotentialTerms1H*heaviside(Lm-z1));
Zdot(4) = (-1*DampingTerm + CouplingTerm2  + PotentialTerms2L*heaviside(z2-Lm) + PotentialTerms2H*heaviside(Lm-z2));


end