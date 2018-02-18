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
    int sudoku[][] = new int[9][9];
    int xi,yi,zi=0;

    int[][] questionGenerate(){
        System.out.println(list);
        Collections.shuffle(list);
        System.out.println(list);

        for(int i=0; i<9; i++){
            int a = list.get(i);
            if(i%3 == 0){
                x_set[xi] = a;
                xi += 1;
            }else if(i%3 == 1){
                y_set[yi] = a;
                yi += 1;
            }else{
                z_set[zi] = a;
                zi += 1;
            }

            if(i>= 6){
                c_set[i-6] = a;
            }else if(i >= 3){
                b_set[i-3] = a;
            }else{
                a_set[i] = a;
            }
        }
        System.out.println("a[]:"+a_set[0]+","+a_set[1]+","+a_set[2]);
        System.out.println("b[]:"+b_set[0]+","+b_set[1]+","+b_set[2]);
        System.out.println("c[]:"+c_set[0]+","+c_set[1]+","+c_set[2]);
        System.out.println("x[]:"+x_set[0]+","+x_set[1]+","+x_set[2]);
        System.out.println("y[]:"+y_set[0]+","+y_set[1]+","+y_set[2]);
        System.out.println("z[]:"+z_set[0]+","+z_set[1]+","+z_set[2]);
        
        /*
        int index=0;
        int n_set=0;
        for(int i=0; i<9; i++){
            for(int j=0; j<9; j++){
                sudoku[i][j] = setting(n_set, index);
                index += 1;
                if(count == 3){
                    n_set += 1;
                    count = 0;
                }
                if(n_set == 3){
                    n_set = 1;
                }
            }
        }
        */
        sudoku[0][0]=sudoku[1][6]=sudoku[2][3]=sudoku[3][2]=sudoku[4][8]=sudoku[5][5]=sudoku[6][1]=sudoku[7][7]=sudoku[8][4]=a_set[0]; // 1
        sudoku[0][3]=sudoku[1][0]=sudoku[2][6]=sudoku[3][5]=sudoku[4][2]=sudoku[5][8]=sudoku[6][4]=sudoku[7][1]=sudoku[8][7]=a_set[1]; // 2
        sudoku[0][6]=sudoku[1][3]=sudoku[2][0]=sudoku[3][8]=sudoku[4][5]=sudoku[5][2]=sudoku[6][7]=sudoku[7][4]=sudoku[8][1]=a_set[2]; // 3

        sudoku[0][1]=sudoku[1][7]=sudoku[2][4]=sudoku[3][0]=sudoku[4][6]=sudoku[5][3]=sudoku[6][2]=sudoku[7][8]=sudoku[8][5]=b_set[0]; // 4
        sudoku[0][4]=sudoku[1][1]=sudoku[2][7]=sudoku[3][3]=sudoku[4][0]=sudoku[5][6]=sudoku[6][5]=sudoku[7][2]=sudoku[8][8]=b_set[1]; // 5
        sudoku[0][7]=sudoku[1][4]=sudoku[2][1]=sudoku[3][6]=sudoku[4][3]=sudoku[5][0]=sudoku[6][8]=sudoku[7][5]=sudoku[8][2]=b_set[2]; // 6

        sudoku[0][2]=sudoku[1][8]=sudoku[2][5]=sudoku[3][1]=sudoku[4][7]=sudoku[5][4]=sudoku[6][0]=sudoku[7][6]=sudoku[8][3]=c_set[0]; // 7
        sudoku[0][5]=sudoku[1][2]=sudoku[2][8]=sudoku[3][4]=sudoku[4][1]=sudoku[5][7]=sudoku[6][3]=sudoku[7][0]=sudoku[8][6]=c_set[1]; // 8
        sudoku[0][8]=sudoku[1][5]=sudoku[2][2]=sudoku[3][7]=sudoku[4][4]=sudoku[5][1]=sudoku[6][6]=sudoku[7][3]=sudoku[8][0]=c_set[2]; // 9

        return sudoku;
    }
}
