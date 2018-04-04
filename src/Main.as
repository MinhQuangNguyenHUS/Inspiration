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
        river.graphics.lineStyle(2,0x000000);
        river.graphics.beginFill(0xac7339,alpha=2.0);
        river.graphics.drawRect(s*2,s*4,s*8,s);
        river.graphics.endFill();
        addChild(river);
        DrawBoard(0xffffff,2,5);

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
            }
        }
        return board;
    }
}
}