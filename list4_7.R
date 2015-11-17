rm(list=ls(all=T))
library(inline)

scr<-'
   Function sort(x);
   return sort(y,Names("decreasing"))
'
