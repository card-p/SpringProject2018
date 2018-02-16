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
        layout.playPage();

       /* switch(page) {
            case 0:
                startPage();
                break;
            case 1:
                playPage();
                break;
            case 2:
                clearPage();
        }*/
    }

    void mouseClicked(){
        number = layout.clickInputSquareNumber();
        System.out.println(number);
    }
//}
