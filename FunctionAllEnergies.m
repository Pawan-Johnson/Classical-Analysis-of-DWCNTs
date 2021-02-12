function F = FunctionAllEnergies(z)
Constants;
z1 = z(1);
z2 = z(2);
CouplingTerm1 = -1*(sqrt( (z2 - z1)^2 + L2^2 )- L2)*(z1 - z2)/(sqrt( (z2 - z1)^2 + L2^2 ));
CouplingTerm2 = -1*CouplingTerm1;
PotentialTerms1H =  N*z1*z1 + p*N*d*d/(2);
PotentialTerms2H =  N*z2*z2 + p*N*d*d/(2);
PotentialTerms1L = -N*z1 + N*z1*z1 + N*(d^4)/(d^2 + z1^2) + p*N*d*d/(2) + N*d*d*z1/sqrt(d*d+z1*z1);
PotentialTerms2L = -N*z2 + N*z2*z2 + N*(d^4)/(d^2 + z2^2) + p*N*d*d/(2) + N*d*d*z2/sqrt(d*d+z2*z2);

F(1) = (CouplingTerm1  + PotentialTerms1L*heaviside(z1-Lm) + PotentialTerms1H*heaviside(Lm-z1));
F(2) = (CouplingTerm2  + PotentialTerms2L*heaviside(z2-Lm) + PotentialTerms2H*heaviside(Lm-z2));
end