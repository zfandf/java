
// import java.util.*;

public class DianCan {

    public static void main(String [] args) {

        //String[] canList = {"market","malan","xiaodou","kku","huoshao", "xiapu", "huimian"};
        String[] canList = {"market","malan","xiaodou","kku","huoshao", "xiapu", "huimian"};

        int catNum = canList.length;
        int num = (int)(Math.random()*catNum);

        System.out.println(canList[num]);
    }

}
