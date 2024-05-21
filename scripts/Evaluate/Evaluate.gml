// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Evaluate(__board, __isWhite){
	
	var _whiteScore = 0;
	var _blackScore = 0;
	
	for(var _x = 1; _x < BOARD_SIZE + 1; _x++)
	{
		for(var _y = 1; _y < BOARD_SIZE + 1; _y++)
		{
			switch(__board[_x, _y])
			{
				case eState.black:
					_blackScore += global.evaluateBoard[_x, _y]
					break;
				case eState.white:
					_whiteScore += global.evaluateBoard[_x, _y]
					break;
			}
		}
	}
	
	if(__isWhite)
	{
		return (_whiteScore - _blackScore);
	}
	else
	{
		return (_blackScore - _whiteScore);
	}
}