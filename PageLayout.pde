class PageLayout extends PageSystem{
    String inputSquarePosition = "down"; // up or down

    /*void startPage(){
    }*/

    void playPage(){
        background(255);
        showTitle();
        sudokuSquare();
        sudokuSquare(3,1);

        inputSquare(inputSquarePosition);
        inputSquareNumber(inputSquarePosition);
    }

    int clickInputSquareNumber(){
        float left = leftMargin*2 + squareX*9;
        float up = topMargin + squareY*6;

        if(mouseX > (squareX*0 + left)
            && mouseX < (squareX*1 + left)){
            if(mouseY > (squareY*0 + up)
                && mouseY < squareY*1 +up){
                return 1;
            }else if(mouseY > (squareY*1 + up)
                && mouseY < squareY*2 +up){
                return 4;
            }else if(mouseY > (squareY*2 + up)
                && mouseY < squareY*3 +up){
                return 7;
            }else{
                return -1;
            }
        }else if(mouseX > (squareX*1 + left)
            && mouseX < (squareX*2 + left)){
            if(mouseY > (squareY*0 + up)
                && mouseY < squareY*1 +up){
                return 2;
            }else if(mouseY > (squareY*1 + up)
                && mouseY < squareY*2 +up){
                return 5;
            }else if(mouseY > (squareY*2 + up)
                && mouseY < squareY*3 +up){
                return 8;
            }else{
                return -1;
            }
        }else if(mouseX > (squareX*2 + left)
            && mouseX < (squareX*3 + left)){
            if(mouseY > (squareY*0 + up)
                && mouseY < squareY*1 +up){
                return 3;
            }else if(mouseY > (squareY*1 + up)
                && mouseY < squareY*2 +up){
                return 6;
            }else if(mouseY > (squareY*2 + up)
                && mouseY < squareY*3 +up){
                return 9;
            }else{
                return -1;
            }
        }else{
            return -1;
        }

       /* for(int i=0; i < 9; i++){
            if(mouseX > (squareX*(i%3) + left)
                && mouseX < (squareX*(i%3+1) + left)){
                    if(mouseY > (squareY*i*(i-1)*(i-2) + up)
                        && mouseY < squareY +up){
                        System.out.println(i+1);
                    }
                    else if(i<5 && mouseY > (squareY*(i-2)*(i-3)*(i-4) + up)
                        && mouseY < squareY*2 +up){
                        System.out.println(i+1);
                    }
                }
            }*/
        }

    /*void clearPage(){
       
    }*/
}
