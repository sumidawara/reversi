// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Count(){
	
	var _whiteCount = 0;
	var _blackCount = 0;
	
	for(var _x = 1; _x < BOARD_SIZE + 1; _x++)
	{
		for(var _y = 1; _y < BOARD_SIZE + 1; _y++)
		{
			switch(global.board[_x, _y])
			{
				case eState.black:
					_blackCount++
					break;
				case eState.white:
					_whiteCount++
					break;
			}
		}
	}
	
	return {white:_whiteCount, black:_blackCount}
}