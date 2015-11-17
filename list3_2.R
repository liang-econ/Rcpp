rm(list=ls(all=T))
library(inline)

src<-'
    Rcpp::IntegerVector vec(vx);
    int prod=1;
    for (int i=0; i<vec.size();i++)
        prod*=vec[i];
 
    return Rcpp::wrap(prod);
'

fun<-cxxfunction(signature(vx="integer"),src,plugin="Rcpp")
fun(1:10)
