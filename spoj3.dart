import "dart:io";
 
main() {
 
   int D = int.parse(stdin.readLineSync());
   for (int i = 0; i < D; i++) {
 
    	String input = stdin.readLineSync();
    	int base = int.parse(input[0]);
    	int exp = int.parse(input[2]);
    	
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