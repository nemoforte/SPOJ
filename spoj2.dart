import "dart:io";
 
main() {
 
   int D = int.parse(stdin.readLineSync());
   for (int i = 0; i < D; i++) {
 
      int n = int.parse(stdin.readLineSync());
      if (n > 10) {
 
      	print('0 0');
 
      } else if (n < 2) {
 
      	print('0 1');
 
      } else {
 
        int w = 1;
        for (int j = 2; j <= n; j++){
        	w *= j;
    	}
 
    	int s = w % 10;
    	int t = (w ~/ 10) % 10;
    	print('$t' + ' ' + '$s');
    }
  }
}