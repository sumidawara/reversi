// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Flip(__board, __isBlack, __x, __y){
	
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
	
	__board[__x, __y] = _same;
	
	var ri, rj;  //調べるマスを移動させるのに使う変数
	for (var di=-1; di<=1; di++){  //横方向
	for (var dj=-1; dj<=1; dj++){  //縦方向
	    ri=__x+di;  rj=__y+dj;  //調べるマスの初期値
      
	    //調べるマスが「相手の石」ならループ
	    while (__board[ri, rj]== _other){
		    ri+=di;  rj+=dj;  //次のマスに移動
        
		    //同色の石に出会った(打てると分かった)時
		    if (__board[ri, rj]== _same)
			{
				ri-=di; rj-=dj;  //1マス戻る
          
				while (!(__x==ri&&__y==rj)){ //元のマスに戻るまで
				__board[ri, rj] = _same;  //自分の石にする(石を返す)
				ri-=di; rj-=dj;  //また1マス戻る
				}
			}  
	    }
	}
	}
  
	return -1;
}