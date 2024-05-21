// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function InitializeBoard(){
	for(var _x = 0; _x < BOARD_SIZE + 2; _x++)
	{
		for(var _y = 0; _y < BOARD_SIZE + 2; _y++)
		{
			global.board[_x, _y] = eState.none;
			if(_x == 0 || _x == BOARD_SIZE + 1 || _y == 0 || _y == BOARD_SIZE + 1)
			{
				global.board[_x, _y] = eState.wall;
			}
		}
	}
	global.board[4, 4] = eState.black;
	global.board[4, 5] = eState.white;
	global.board[5, 4] = eState.white;
	global.board[5, 5] = eState.black;
}

function ConsoleOutputBoard(__board){
	for(var i = 0; i < BOARD_SIZE + 2; i++)
	{
		show_debug_message(__board[i])
	}
}
