(* ::Package:: *)

(* ::Input::Initialization:: *)
RotateX[t_] := (M1 = {{1,0,0},{0,Cos[t],-Sin[t]},{0,Sin[t],Cos[t]}};Return[M1]);
RotateY[t_] := (M1 = {{Cos[t],0,Sin[t]},{0,1,0},{-Sin[t],0,Cos[t]}};Return[M1]);
RotateZ[t_] := (M1 = {{Cos[t],-Sin[t],0},{Sin[t],Cos[t],0},{0,0,1}};Return[M1]);

RotateCSX[cos_,sin_] := (M1 = {{1,0,0},{0,cos,-sin},{0,sin,cos}};Return[M1]);
RotateCSY[cos_,sin_] := (M1 = {{cos,0,sin},{0,1,0},{-sin,0,cos}};Return[M1]);
RotateCSZ[cos_,sin_] := (M1 = {{cos,-sin,0},{sin,cos,0},{0,0,1}};Return[M1]);

RotateXInv[t_] := (M1 = {{1,0,0},{0,Cos[t],Sin[t]},{0,-Sin[t],Cos[t]}};Return[M1]);
RotateYInv[t_] := (M1 = {{Cos[t],0,-Sin[t]},{0,1,0},{Sin[t],0,Cos[t]}};Return[M1]);
RotateZInv[t_] := (M1 = {{Cos[t],Sin[t],0},{-Sin[t],Cos[t],0},{0,0,1}};Return[M1]);

RotateSmallX[t_]:=(M1={{1,0,0},{0,1-(t^2)/2,-t},{0,t,1-(t^2)/2}};Return[M1]);
RotateSmallY[t_]:=(M1={{1-(t^2)/2,0,t},{0,1,0},{-t,0,1-(t^2)/2}};Return[M1]);
RotateSmallZ[t_]:=(M1={{1-(t^2)/2,-t,0},{t,1-(t^2)/2,0},{0,0,1}};Return[M1]);

RotateSmallerX[t_]:=(M1={{1,0,0},{0,1,-t},{0,t,1}};Return[M1]);
RotateSmallerY[t_]:=(M1={{1,0,t},{0,1,0},{-t,0,1}};Return[M1]);
RotateSmallerZ[t_]:=(M1={{1,-t,0},{t,1,0},{0,0,1}};Return[M1]);

Rotate2[t_] := (M1 = {{Cos[t],-Sin[t]},{Sin[t],Cos[t]}};Return[M1]);

RotateFromSAA[a1_,a2_,a3_] := Module[{c1,c2,c3,R,R1,R2,R3},
c1=Sin[a2]Cos[a3];
c2=Sin[a2]Sin[a3];
c3=Cos[a2];
R1=Cos[a1]IdentityMatrix[3]; 
R2=(1-Cos[a1]){{c1 c1,c1 c2,c1 c3},{c2 c1,c2 c2,c2 c3},{c3 c1,c3 c2,c3 c3}};
R3=Sin[a1]{{0,-c3,c2},{c3,0,-c1},{-c2,c1,0}};
R=R1+R2+R3;
Return[R]]

