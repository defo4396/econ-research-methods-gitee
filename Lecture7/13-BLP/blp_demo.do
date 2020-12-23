use blp_demo, clear

qui{
    generate w12=w1^2
    generate w22=w2^2
    generate w32=w3^2
    generate x12=x1^2
    generate x1w1=x1*w1
    generate x1w2=x1*w2
    generate x1w3=x1*w3
    bysort mkt: egen x1s=sum(x1)
    replace x1s=x1s-x1
}
blp s x1, stochastic(x1=d1 d2,p) endog(p=w1 w2 w3 w12 w22 w32 x12 x1w1 x1w2 x1w3 x1s) markets(mkt) optinst(w1 w2 w3) demofile(demodata)  elast(p,1,product)
