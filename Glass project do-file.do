summ
reg price blown funct set blue multc c18 c19 sculpt vase stem chand lamp cameo cold french italian chinese artist london

*use natural log of price
reg lnprice blown set blue multc c18 c19 sculpt vase stem chand lamp cameo cold french italian chinese artist london

*drop french, c18/c19, stem/chand/lamp, blown/sculpt, and cameo
reg lnprice set blue multc vase cold italian chinese artist london

*test for hetero
imtest, white

*run robust std errs
reg lnprice set blue multc vase cold italian chinese artist london, robust
*aic/bic to compare
estat ic


*run robust with dropped origins
reg lnprice set blue multc vase cold artist london, robust
*aic/bic to compare
estat ic
