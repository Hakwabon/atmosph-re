clear all

R_Terre = 6378137
G = 6.674*10^(-11)
M_Terre = 5.972*10^24
rho_0 = 1.292
P_0 = 101325

dz = 10%input("precision en metre: ")
k = 1;

z = 0;
g = 9.81;
P = P_0;

while P > 10 ;
  
  g = g + G*M_Terre/((R_Terre+z)^2)*dz;
  
  P = P_0*exp(-rho_0*g/P_0);
  
  rho = rho_0*P/P_0;
  
  liste_rho(k) = rho;
  liste_z(k) = z;
  liste_P(k) = P;
  
  k = k + 1;
  z = z + dz;
endwhile

z

P/P_0

plot(liste_z,liste_P)
title("Pression atmospherique en fonction de l altitude")