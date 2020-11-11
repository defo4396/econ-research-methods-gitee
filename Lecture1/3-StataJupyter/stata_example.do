*--------------------------*
* Title 
* Author:
* Version：
*--------------------------*

clear all
set more off 
//cd (global)
//global loc "E:\Data\Patents\Idea-production"
// cd $loc
cap log close
log using rmeb.smcl, replace
sysuse auto
qui reg price mpg
est sto m1
qui reg pric mpg rep78
est sto m2
esttab m1 m2 using regout.tex, star(* 0.01)

exit
*---END---*
