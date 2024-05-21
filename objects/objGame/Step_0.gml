var _count = Count()
upper_text = "White:" + string(_count.white) + "   Black:" + string(_count.black)

if(path_count == 2)
{
	if(_count.black > _count.white)
	{
		lower_text = "You Win"
	}
	else if(_count.white > _count.black)
	{
		lower_text = "You Lose"
	}
	else
	{
		lower_text = "Draw"
	}
}

if(playerTurn)
{
	
	var _pointArray =  CanPutPoint(global.board, true);
	if(array_length(_pointArray) == 0)
	{
		 path_count++;
		 playerTurn = false;
	}
	
	global.isWaitingInput = true;
	if(global.input != -1)
	{
		if(CheckAtPoint(global.board, true, global.input.x, global.input.y ))
		{
			Flip(global.board, true, global.input.x, global.input.y )
			
			//初期化
			global.isWaitingInput = false;
			global.input = -1
			playerTurn = false
		}
		
		//ConsoleOutputBoard();
	}
	
}
else
{
	var _pointArray =  CanPutPoint(global.board, false);
	var _pointArrayLen = array_length(_pointArray);
	if(_pointArrayLen != 0)
	{
		var maxEvaluate = -9999;
		var maxEvaluateIndex = -1;
		//for(var i = 0; i < _pointArrayLen; i++)
		//{
		//	var _board = -1
		//	for(var _x = 1; _x < BOARD_SIZE + 1; _x++)
		//	{
		//		for(var _y = 1; _y < BOARD_SIZE + 1; _y++)
		//		{
		//			_board[_x, _y] = global.board[_x, _y];
		//		}
		//	}
			
		//	Flip(_board, false, _pointArray[i].x, _pointArray[i].y);
			
		//	var _evaluate = Evaluate(_board, true);
		//	if(maxEvaluate < _evaluate)
		//	{
		//		maxEvaluate = _evaluate
		//		maxEvaluateIndex = i
		//	}
		//}
		
		//var _point = _pointArray[maxEvaluateIndex];
		var _point = array_pop(_pointArray)
		Flip(global.board, false, _point.x, _point.y);	
	}
	else
	{
		path_count++;
	}
	
	playerTurn = true;
}