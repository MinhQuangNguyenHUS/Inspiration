package {

import flash.display.Bitmap;
import flash.display.Sprite;
import flash.text.TextField;


public class Main extends Sprite {
    var a:Number,b:Number,k:Number,m:Number,s:Number=40;
    var board:Sprite;


    public function Main(){
        DrawBoard(0xac7339,2,0);
        var river:Sprite=new Sprite();
        var  line:Sprite=new Sprite();
        river.graphics.lineStyle(2,0x000000);
        river.graphics.beginFill(0xac7339,alpha=2.0);
        river.graphics.drawRect(s*2,s*4,s*8,s);
        river.graphics.endFill();
        addChild(river);
        line.graphics.beginFill(0x000000);
        line.graphics.lineStyle(2,0x000000);
        line.graphics.moveTo((2+3)*s,0*s);
        line.graphics.lineTo((2+5)*s,(0+2)*s);
        line.graphics.moveTo((2+5)*s,0*s);
        line.graphics.lineTo((2+3)*s,(0+2)*s);
        addChild(line);
        DrawBoard(0xffffff,2,5);
        line.graphics.beginFill(0x000000);
        line.graphics.lineStyle(2,0x000000);
        line.graphics.moveTo((2+3)*s,7*s);
        line.graphics.lineTo((2+5)*s,(7+2)*s);
        line.graphics.moveTo((2+5)*s,7*s);
        line.graphics.lineTo((2+3)*s,(7+2)*s);
        addChild(line);

    }

    function DrawCell(bgColor:uint):Sprite{
        var cell:Sprite=new Sprite();
        cell.graphics.lineStyle(2,0x000000);
        cell.graphics.beginFill(bgColor,alpha=2.0);
        cell.graphics.drawRect(a,b,s,s);
        cell.graphics.endFill();
        return cell;
    }
    function DrawBoard(bgColor:uint,m,k):Sprite{
        for(var j:int=k;j<k+4;j++){
            b=j*s;
            for(var i:int=m;i<m+8;i++){
                a=i*s;
                board=DrawCell(0xac7339);
                addChild(board);
//                if((i%2!=0) & (j==3)){
//                    board.graphics.curveTo(a-3,b*3*s-3,a-6,b*3*s-3);
//                }
//
//            }
        }

        return board;
    }
}
}