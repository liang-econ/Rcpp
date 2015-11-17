rm(list=ls(all=T))
src<-'
    NumericVector x= NumericVector::create(
           _["mean"]=1.23,
           _["dim"]=42,
           _["cnt"]=12);
    return x;
'
fun<-cxxfunction(signature(),src,plugin="Rcpp")
fun()
