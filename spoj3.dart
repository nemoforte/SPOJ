import "dart:io";
 
main() {
 
   int D = int.parse(stdin.readLineSync());
   for (int i = 0; i < D; i++) {
 
    	String input = stdin.readLineSync();
    	List inputS = input.split(" ");
    	int base = int.parse(inputS[0]);
    	int exp = int.parse(inputS[1]);
    	base %= 10;
    	if (exp > 0) {
    		
    		exp = exp % 4;
    		if (exp == 0){
    			exp = 4;
    		}
    		
    		int R = base;
    		for (int j = 1; j < exp; j++){
    			R *= base;
    		}
    		
    		R = R % 10;
    		print(R);
    		
    	} else {
    		
    		print(1);
    		
    	}
    
   }
}