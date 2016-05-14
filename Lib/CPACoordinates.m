(* ::Package:: *)

ClearAll;
Get[FileNameJoin[{ParentDirectory[NotebookDirectory[]],"Lib","MathTensor.m"}]]
ctTaFb[Tb_,Xb_,a_]=Xb Sinh[a Tb];
ctXaFb[Tb_,Xb_,a_]=Xb Cosh[a Tb];
ctTbFa[Ta_,Xa_,a_]=(1/a)ArcTanh[Ta/Xa];
ctXbFa[Ta_,Xa_,a_]=Sqrt[Xa^2-Ta^2];
CTab[Tb_,Xb_,a_]=Module[{CT},
CT = {{D[ctTaFb[Tb,Xb,a],Tb],D[ctTaFb[Tb,Xb,a],Xb]},
         {D[ctXaFb[Tb,Xb,a],Tb],D[ctXaFb[Tb,Xb,a],Xb]}};
Return[FullSimplify[CT]];
];
CTba[Ta_,Xa_,a_]=Module[{CT},
CT = {{D[ctTbFa[Ta,Xa,a],Ta],D[ctTbFa[Ta,Xa,a],Xa]},
         {D[ctXbFa[Ta,Xa,a],Ta],D[ctXbFa[Ta,Xa,a],Xa]}};
Return[FullSimplify[CT]];
];
Gadd=DiagonalMatrix[{1,-1}];
Gauu=DiagonalMatrix[{1,-1}];
Gbdd[Xb_,a_]:=DiagonalMatrix[{a^2 Xb^2,-1}];
Gbuu[Xb_,a_]:=Inverse[Gbdd[Xb,a]];
