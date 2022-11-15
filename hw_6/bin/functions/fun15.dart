//Fun15 
 displayBMI({int? w , int? h}){
 var hg = h! / 100; //Convert CM to M
  double ruselt = w! / ((hg)*2);
  return ruselt;
 }