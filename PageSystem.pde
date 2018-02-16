public class PageSystem{
    protected int windowSizeX = 450;
    protected int windowSizeY = 390;

    protected int squareX = 30;
    protected int squareY = 30;
    protected int leftMargin = 30;
    protected int rightMargin = windowSizeX - 30;
    protected int topMargin = 90;
    protected int bottomMargin = windowSizeY - 30;

    protected int page;
    protected int fontSize;

    public int getWindowSizeX(){
        return windowSizeX;
    }

    public int getWindowSizeY(){
        return windowSizeY;
    }

    protected void showTitle(){
    
    }

    // (1,1) (1,2) (1,3)
    // (2,1) (2,2) (2,3)
    // (3,1) (3,2) (3,3)
    protected void middleSquare(int x, int y){
        rect(x + leftMargin, height-15, squareX, squareY);
    }

    //  1  2  3  4  5  6  7  8  9
    // 10 11 12 13 14 15 16 17 18
    //  :  :  :
    // 73 74 75 76 77 78 79 80 81
    protected void sudokuSquare(int n){
        for(int i=1; i<=n; i++){
            rect(squareX * i + leftMargin, topMargin, squareX * i + leftMargin, height - 30);
        }
    }

    protected void sudokuSquare(){
        for(int i=0; i<10; i++){
            if(i%3 == 0){
                stroke(56,67,222);
                strokeWeight(1);
            }else{
                stroke(0); 
                strokeWeight(1);
            }
            if(i == 0 || i == 9){
                stroke(0);
                strokeWeight(2);
            }
            line(squareX * i + leftMargin, topMargin, squareX * i + leftMargin, bottomMargin);
            line(leftMargin, squareY * i + topMargin, squareY * 9 + leftMargin, squareY * i + topMargin);
        }
    }

    protected void inputSquare(int n){
    }

    protected void inputSquare(){
        for(int i=0; i<4; i++){
            if(i == 0 || i == 3){
                stroke(0);
                strokeWeight(2);
            }else{
                strokeWeight(1);
            }
            line(squareX*i + (leftMargin*2 + squareX*9), topMargin + squareY*6,
                squareX*i + (leftMargin*2 + squareX*9), bottomMargin);
            line(leftMargin*2 + squareX*9, squareY*i + (topMargin + squareY*6),
                rightMargin, squareY*i + (topMargin + squareY*6));
        }
    }

    protected void inputSquareNumber(){
        for(int i=0; i<9; i++){
            if(i < 3){
                fill(0);
                text(i+1, 11 + squareX*(i%3) + (leftMargin*2 + squareX*9), 20 + topMargin + squareY*6);
            }else if(i < 6){
                text(i+1, 11 + squareX*(i%3) + (leftMargin*2 + squareX*9), 20 + topMargin + squareY*7);
            }else{
                text(i+1, 11 + squareX*(i%3) + (leftMargin*2 + squareX*9), 20 + topMargin + squareY*8);
            }
        }
    }
}
