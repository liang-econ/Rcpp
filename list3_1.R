rm(list=ls(all=T))
library(Rcpp)
library(inline)
src<-'
   Rcpp::IntegerVector epn(4);
   epn[0]=6;
   epn[1]=14;
   epn[2]=496;
   epn[3]=8182;
   return epn;
'
fun<-cxxfunction(signature(),src,plugin="Rcpp")
fun()

