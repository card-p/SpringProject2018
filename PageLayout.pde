class PageLayout extends PageSystem{
    String inputSquarePosition = "down"; // up or down

    /*void startPage(){
    }*/

    void playPage(){
        background(255);
        showTitle();
        sudokuSquare();

        inputSquare(inputSquarePosition);
        inputSquareNumber(inputSquarePosition);
    }

    void clickInputSquareNumber(){
        float left = leftMargin*2 + squareX*9;
        float up = topMargin + squareY*6;
        for(int i=0; i < 9; i++){
            if(mouseX > (squareX*(i%3) + left)
                && mouseX < (squareX*(i%3+1) + left){
                if(mouseY > squareY*i*0 + up){
                    System.out.println(i+1);
                }
            }
        }
    }

    /*void clearPage(){
       
    }*/
}
