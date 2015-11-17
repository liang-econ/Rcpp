rm(list=ls(all=T))
library(inline)

src<-'
    Rcpp::NumericVector invec(vx);
    Rcpp::NumericVector outvec = Rcpp::clone(vx);
    for (int i=0; i<invec.size(); i++)
        outvec[i] = log(invec[i]);

    return outvec;
'

fun<-cxxfunction(signature(vx="numeric"),src,plugin="Rcpp")
x<-seq(1,3)
cbind(x,fun(x))
