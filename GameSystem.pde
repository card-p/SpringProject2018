import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Collections;

public class GameSystem{
    List<Integer> list = new ArrayList<Integer>(Arrays.asList(1,2,3,4,5,6,7,8,9));
    int a_set[] = new int[3];
    int b_set[] = new int[3];
    int c_set[] = new int[3];
    int x_set[] = new int[3];
    int y_set[] = new int[3];
    int z_set[] = new int[3];

    void questionGenerate(){
        System.out.println(list);
        Collections.shuffle(list);
        System.out.println(list);

        for(int i=0; i<9; i++){
            int a = list.get(i);
            if(i>= 6){
                c_set[i-6] = a;
            }else if(i >= 3){
                b_set[i-3] = a;
            }else{
                a_set[i] = a;
            }
        }
        System.out.println(a_set);
        System.out.println(b_set);
        System.out.println(c_set);
    }
}
