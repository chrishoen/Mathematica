(* ::Package:: *)

RotateX[t_] := (M1 = {{1,0,0},{0,Cos[t],-Sin[t]},{0,Sin[t],Cos[t]}};Return[M1]);
RotateY[t_] := (M1 = {{Cos[t],0,Sin[t]},{0,1,0},{-Sin[t],0,Cos[t]}};Return[M1]);
RotateZ[t_] := (M1 = {{Cos[t],-Sin[t],0},{Sin[t],Cos[t],0},{0,0,1}};Return[M1]);

RotateXInv[t_] := (M1 = {{1,0,0},{0,Cos[t],Sin[t]},{0,-Sin[t],Cos[t]}};Return[M1]);
RotateYInv[t_] := (M1 = {{Cos[t],0,-Sin[t]},{0,1,0},{Sin[t],0,Cos[t]}};Return[M1]);
RotateZInv[t_] := (M1 = {{Cos[t],Sin[t],0},{-Sin[t],Cos[t],0},{0,0,1}};Return[M1]);

