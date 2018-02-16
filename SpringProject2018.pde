//public class SpringProject2018{
    PageLayout layout = new PageLayout();
    int number;

    void settings(){
        size(layout.getWindowSizeX(), layout.getWindowSizeY());
    }

    void setup(){
        background(255);
    }

    void draw(){
        //layout.playPage();
        //layout.startPage();

        switch(layout.page) {
            case 0:
                layout.startPage();
                break;
            case 1:
                layout.playPage();
                break;
          /*  case 2:
                clearPage();*/
        }
    }

    void mouseClicked(){
        switch(layout.page) {
            case 0:
                layout.clickStart();
                break;
            case 1:
                number = layout.clickInputSquareNumber();
                System.out.println(number);
                break;
        }
    }
//}
