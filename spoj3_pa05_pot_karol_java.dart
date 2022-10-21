import 'spoj3_pa05_pot_karol_java.dart'java.io.BufferedReader;
import 'spoj3_pa05_pot_karol_java.dart'java.io.IOException;
import 'spoj3_pa05_pot_karol_java.dart'java.io.InputStreamReader;
import 'spoj3_pa05_pot_karol_java.dart'java.util.StringTokenizer;

public class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(System.in));
        StringTokenizer stringTokenizer;
        int tests = Integer.parseInt(bufferedReader.readLine());

        while (tests-- > 0) {
            stringTokenizer = new StringTokenizer(bufferedReader.readLine());
            int a = (Integer.parseInt(stringTokenizer.nextToken())) % 10,
                    b = Integer.parseInt(stringTokenizer.nextToken()),
                    tab[] = new int[] {0,0,0,0,1,1,1,1,2,4,8,6,3,9,7,1,4,6,4,6,5,5,5,5,6,6,6,6,7,9,3,1,8,4,2,6,9,1,9,1};

            if (b == 0) {
                System.out.println(1);
                continue;
            }

            System.out.println(tab[(4 * a + ((b - 1) % 4))]);
        }
    }
}