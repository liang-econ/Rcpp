rm(list=ls(all=T))
library(inline)

src<-'
    Rcpp::NumericVector x= Rcpp::NumericVector::create(
        Rcpp::Named("mean")=1.23,
        Rcpp::Named("dim")=42,
        Rcpp::Named("cnt")=12);
    return x;
'

fun<-cxxfunction(signature(),src,plugin="Rcpp")
fun()
