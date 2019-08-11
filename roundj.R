#============================================================
#Rounds a number up, to the nearest n
#============================================================
roundup<-function(input, n){
  return(ifelse(input%%n!=0,n*trunc(input/n)+n,input))
}

#TEST
#for (x in 0:11) {
#  print(roundup(x,5))
#}

#============================================================
#Rounds a number up (as default) or down, to the nearest n
#============================================================
roundj<-function(input, n, direction="up"){
  if (direction=="up"){
    out<-ifelse(input%%n!=0,n*trunc(input/n)+n,input)
  } else if (direction=="down"){
    out<-ifelse(input%%n!=0,n*trunc(input/n),input)
  }
  return(out)
}

#TEST
#for (x in 0:11) {
#  print(roundj(x,5)
#}

#TEST
#for (x in 0:11) {
#  print(roundj(x,5,"up"))
#}

#TEST
#for (x in 0:11) {
#  print(roundj(x,5,"down"))
#}

