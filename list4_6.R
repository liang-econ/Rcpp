rm(list=ls(all=T))
library(inline)

src<-'
    using namespace std;
    IntegerVector v= IntegerVector::create(7,8,9);
    vector<string> s(3);
    s[0]= "x";
    s[1]= "y";
    s[2]= "z";
    return DataFrame::create(Rcpp::Named("a")=v,Rcpp::Named("b")=s);
'

fun<-cxxfunction(signature(),src,plugin="Rcpp")

fun()
