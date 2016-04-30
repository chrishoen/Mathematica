(* ::Package:: *)

ClearAll;
ClearSystemCache;

Gdd = DiagonalMatrix[{1,-1,-1,-1}];
Guu = Inverse[Gdd];

LorentzMatrix[V_] := Module[{\[Beta]1,\[Beta]2,\[Beta]3,\[Beta],\[Gamma],LT},
\[Beta]1 = V[[1]];
\[Beta]2 = V[[2]];
\[Beta]3 = V[[3]];
\[Beta] = Sqrt[\[Beta]1^2  + \[Beta]2^2 + \[Beta]3^2];
\[Gamma] = 1/Sqrt[1-\[Beta]^2];
LT ={
{\[Gamma],-\[Beta]1 \[Gamma], -\[Beta]2 \[Gamma], -\[Beta]3 \[Gamma]},
{-\[Beta]1 \[Gamma],1+(\[Gamma]-1)\[Beta]1^2/\[Beta]^2,(\[Gamma]-1)\[Beta]1 \[Beta]2/\[Beta]^2,(\[Gamma]-1)\[Beta]1 \[Beta]3/\[Beta]^2},{-\[Beta]2 \[Gamma],(\[Gamma]-1)\[Beta]1 \[Beta]2/\[Beta]^2,1+(\[Gamma]-1)\[Beta]2^2/\[Beta]^2,(\[Gamma]-1)\[Beta]3 \[Beta]2/\[Beta]^2},{-\[Beta]3 \[Gamma],(\[Gamma]-1)\[Beta]1 \[Beta]3/\[Beta]^2,(\[Gamma]-1)\[Beta]3 \[Beta]2/\[Beta]^2,1+(\[Gamma]-1)\[Beta]3^2/\[Beta]^2}};
Return[LT];]

\[Gamma][v_]:= 1/Sqrt[1-v^2];
\[Gamma][{v1_,v2_,v2_}]:= 1/Sqrt[1-(v1^2 + v2^2  v3^2) ];
MyNorm3[a3_] := Sqrt[a3[[1]]^2 + a3[[2]]^2 + a3[[3]]^2]
Velocity4From3[v3_]:=\[Gamma][MyNorm3[v3]] Prepend[v3,1]
Velocity3From4[v4_]:=Rest[v4]/First[v4]
DistSQFrom4[a_,b_] := (a[[2]] - b[[2]])^2 + (a[[3]] - b[[3]])^2 +(a[[4]] - b[[4]])^2 ;
DistFrom4[a_,b_] := Sqrt[(a[[2]] - b[[2]])^2 + (a[[3]] - b[[3]])^2 +(a[[4]] - b[[4]])^2 ];

TP=TensorProduct[##]&;
TC=TensorContract[##]&;
TCP[A1__][A2_] := TensorContract[TensorProduct[A1],A2];
TLower[A1_,GGdd_,I_] := TensorContract[TensorProduct[GGdd,A1],{2,2+I}];
TRaise[A1_,GGuu_,I_] := TensorContract[TensorProduct[GGuu,A1],{2,2+I}];
TLower[A1_,I_] := TensorContract[TensorProduct[Gdd,A1],{2,2+I}];
TRaise[A1_,I_] := TensorContract[TensorProduct[Guu,A1],{2,2+I}];
TVectorNorm[A_]:=TCP[A,TLower[A,1]][{1,2}]
TVectorNorm[A_,B_]:=TCP[A,TLower[B,1]][{1,2}]
TOneFormNorm[A_]:=TCP[A,TRaise[A,1]][{1,2}]
