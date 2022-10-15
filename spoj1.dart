import 'dart:io';
 
main() {
    int n = int.parse(stdin.readLineSync());
    String result;
    for (int i = 0; i < n; i++) {
        int R = int.parse(stdin.readLineSync());
        result = iffirst(R) == true ? "TAK" : "NIE";
  	    print(result);
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