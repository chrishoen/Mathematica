Instructions for Installing the Tensorial files.


You should have downloaded
	TensorCalculus3.zip  - The package, style sheet and documentation.

There are several places that the package could be placed:

a) Probably the best place is to evaluate $AddOnsDirectory in Mathematica 4.1 or
$BaseDirectory or $UserBaseDirectory in Mathematica 5.0. This will give you a place to put
application files that is completely outside the Mathematica system files and will remain
the same even if you update Mathematica. For example, on my Windows system it is
C:\Windows\All Users\Application Data\Mathematica. There you will find an Applications 
folder. The Applications folder is the target folder. (These files are discussed in Help, Getting Started, System-Specific Information, File Layout.)

b) You could use the AddOns\Applications folder within the Mathematica folders as the target
folder.

c) You could use the AddOns\ExtraPackages folder within the Mathematica folders as the target folder.

Having picked the target folder... 

1) Select the downloaded zip file and RIGHT drag it to the target folder.
2) Choose: Extract to the target (Application or ExtraPackages) folder (not the TensorCalculus3 folder).
3) If you are updating a previous version choose to replace all files.

At the conclusion your should have the structure:

target folder
 \TensorCalculus3 (package file)
   \Documentation
     \English (Help Documentation files and notebooks)
   \FrontEnd
     \StyleSheets (the TensorialStyle style sheet)

If you install the package in AddOns\ExtraPackages (c) then
you will have to move the TensorialStyle notebook
to the Configuration\FrontEnd\StyleSheets folder so that Mathematica
will find it, or add ExtraPackages to the StyleSheetPath
using the Option Inspector.


IMPORTANT, you must rebuild the Help Index!
When you start Mathematica use Menu\Help\Rebuild Help Index.

In the Help window click Add-Ons\Tensorial3.0 or Add-Ons\Extra\Tensorial3.0 to access
the documentation.

The package is loaded with the statements

Needs["TensorCalculus3`Tensorial`"]
_______________________________________________________________

That should work. If you have problems please contact me.

djmp@earthlink.net
	
	
	
	