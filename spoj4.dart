import 'dart:io';
 
void main() {
 
	String D = stdin.readLineSync();
	String N = "";
	if (D.length == 1){
 
		N = D;
 
	} else {
 
		for (int i = 0; i <= D.length-2; i++){
 
			N += D[i];
 
			if (D[i] == D[i+1]) {
 
				int r = 1;
 
				for (int j = i+1; j <= D.length-1; j++){
 
					if (D[i] == D[j]){
						
						r += 1;
						
					}
				
				}
				
			N += r.toString();
				
			i += r-1;
				
			}
		}
		
		if (D[D.length-2] != D[D.length-1]){
			N += D[D.length-1];
		}
 
	}
	print(N);
}