draw_text(40,15, upper_text)
draw_text(40, 215, lower_text)

for(var _x = 1; _x < BOARD_SIZE + 1; _x++)
{
	for(var _y = 1; _y < BOARD_SIZE + 1; _y++)
	{
		switch(global.board[_x, _y])
		{
			case eState.black:
				tilemap_set(tileBlackAndWhiteID, eState.black, _x + BOARD_X - 1, _y  + BOARD_Y - 1);
				break;
			case eState.white:
				tilemap_set(tileBlackAndWhiteID, eState.white, _x + BOARD_X - 1, _y  + BOARD_Y - 1);
				break;
		}
	}
}

