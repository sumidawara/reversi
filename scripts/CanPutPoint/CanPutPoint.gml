// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CanPutPoint(__board, __isBlack){
	
	var _pointArray = array_create(0);
	for(var _x = 1; _x < BOARD_SIZE + 1; _x++)
	{
		for(var _y = 1; _y < BOARD_SIZE + 1; _y++)
		{
			if(CheckAtPoint(global.board, __isBlack, _x, _y))
			{
				array_push(_pointArray, {x:_x, y:_y})
			}
		}
	}
	
	return _pointArray;
}

function CheckAtPoint(__board, __isBlack, __x, __y)
{
	var _other = -1;
	var _same = -1;
	if(__isBlack)
	{
		_other = eState.white
		_same = eState.black;
	}
	else
	{
		_other = eState.black
		_same = eState.white;
	}
	
	
	if(__board[__x, __y] != eState.none) return false;
	
	var ri, rj;  //調べるマスを移動させるのに使う変数
	for (var di=-1; di<=1; di++){  //横方向
	for (var dj=-1; dj<=1; dj++){  //縦方向
	    ri=__x+di;  rj=__y+dj;  //調べるマスの初期値
      
	    //調べるマスが「相手の石」ならループ
	    while (__board[ri, rj]== _other){
	    ri+=di;  rj+=dj;  //次のマスに移動
        
	    //同色の石に出会った(打てると分かった)時
	    if (__board[ri, rj]== _same){return true;}  //打てると判定
	    }
	}
	}
  
	return false;
}

