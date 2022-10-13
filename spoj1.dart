import 'dart:io';
 
main() {
  String? nn = stdin.readLineSync(); //SPOJ will approve after deleting "?"
  if (nn != null) {
    int n = int.parse(nn);
    String result;
    for (int i = 0; i < n; i++) {
      String? rresult = stdin.readLineSync(); //SPOJ will approve after deleting "?"
      if (rresult != null) {
        int rrresult = int.parse(rresult);
        result = iffirst(rrresult) == true ? "TAK" : "NIE";
  	    print(result);
      }
    }
  } 
}
 
dynamic iffirst(int v) {
 
	if (v == 1){
		return false;
	}
 
	for (int i = 2; i < (v/2)+1; i++) {
 
		if(v % i == 0){
			return false;
		}
	}
	return true;
}