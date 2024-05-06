#Conjuntos
set I := {1..10};
set K := {1..18};
set K_odd := {<k> in K with k mod 2 == 1};
#Variables 
param c := 5;
param d := 13;

var X[I*I*K] binary;
var W[I*K_odd] binary;
var Y[I*K_odd] binary;

#Funcion objetivo 

minimize base: sum <i,k> in I*K_odd : W[i,k];

#Reestricciones 

#General

subto r1: forall <i,j> in I*I with j != i: sum <k> in K with k <= 9 : (X[i,j,k] + X[j,i,k])  == 1;
subto r2: forall <i,j> in I*I with j != i: sum <k> in K with k > 9 : (X[i,j,k] + X[j,i,k])  == 1;
subto r3: forall <i,j> in I*I with j != i: sum <k> in K : X[i,j,k] == 1;
subto r4: forall <j,k> in I*K : sum <i> in I with i != j : (X[i,j,k] + X[j,i,k]) == 1;


subto r6_1: forall <i> in I: sum<k> in K_odd : Y[i,k] <= 5;
subto r6_2: forall <i> in I: 4 <=  sum <k> in K_odd : Y[i,k];
subto r7: forall <i,k> in I*K_odd: sum <j> in I with i != j: (X[i,j,k] + X[j,i,k+1]) <= 1 + Y[i,k];
subto r8: forall <i,k> in I*K_odd: sum <j> in I with i != j: X[i,j,k] >= Y[i,k] ; 
subto r9: forall <i,k> in I*K_odd: sum <j> in I with i != j: X[j,i,k+1] >= Y[i,k] ;

subto r10: forall <i,k> in I*K_odd: sum <j> in I with i != j: (X[j,i,k] + X[j,i,k+1]) <= 1 + W[i,k];
subto r11: forall <i,k> in I*K_odd: sum <j> in I with i != j: X[j,i,k] >= W[i,k] ;
subto r12: forall <i,k> in I*K_odd: sum <j> in I with i != j: X[j,i,k+1] >= W[i,k] ;

#min_max
subto r19: forall <i,j,k> in I*I*K with j != i and k <= 18-c : sum <k2> in K with k <= k2 and k2 <= k+c: (X[i,j,k2] + X[j,i,k2]) <= 1 ;
subto r20: forall <i,j,k> in I*I*K with j != i: sum <k2> in K with k2 != k and k-d <= k2 and 1 <= k2 and (k2 <= k + d  or k2 <= 18) :  X[i,j,k2] >= X[j,i,k];
