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
    PImage img;

    public int getWindowSizeX(){
        return windowSizeX;
    }

    public int getWindowSizeY(){
        return windowSizeY;
    }

    protected void showTitle(){
        img = loadImage("title.png");
        image(img, width/4, topMargin/7);
    }

    // (0,0) (1,0) (2,0)...(8,0)
    // (0,1) (1,1) (2,1)...(8,1)
    //  : :   : :   : : ... : :
    // (0,8) (1,8) (2,8)...(8,8)
    protected void sudokuSquare(int x, int y){
        fill(255);
        rect(squareX*x + leftMargin, squareY*y + topMargin, squareX, squareY);
    }

    // 線で描画
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

    // 問題番号表示
    protected void sudokuSquareNumber(int[][] all_number){
        fill(0);
        for(int i=0; i<9; i++){
            for(int j=0; j<9; j++){
                text(all_number[i][j], squareX*i + leftMargin+11, squareY*j + topMargin+20);
            }
        }
    }

    protected void inputSquare(int n){
    }

    // 線で描画
    protected void inputSquare(String position){
        if(position == "up"){
            for(int i=0; i<4; i++){
                if(i == 0 || i == 3){
                    stroke(0);
                    strokeWeight(2);
                }else{
                    strokeWeight(1);
                }
                line(squareX*i + (leftMargin*2 + squareX*9), topMargin + squareY*3,
                    squareX*i + (leftMargin*2 + squareX*9), bottomMargin - squareY*3);
                line(leftMargin*2 + squareX*9, squareY*i + (topMargin + squareY*3),
                    rightMargin, squareY*i + (topMargin + squareY*3)); 
            }
        }
        if(position == "down"){
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
    }

    // 数字の描画
    protected void inputSquareNumber(String position){
        if(position == "up"){
            for(int i=0; i<9; i++){
                if(i < 3){
                    fill(0);
                    text(i+1, 11 + squareX*(i%3) + (leftMargin*2 + squareX*9), 20 + topMargin + squareY*3);
                }else if(i < 6){
                    text(i+1, 11 + squareX*(i%3) + (leftMargin*2 + squareX*9), 20 + topMargin + squareY*4);
                }else{
                    text(i+1, 11 + squareX*(i%3) + (leftMargin*2 + squareX*9), 20 + topMargin + squareY*5);
                }
            }
        }
        if(position == "down"){
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

}
