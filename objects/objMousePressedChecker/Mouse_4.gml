if(BOARD_X <= mouse_x div TILE_SIZE <= BOARD_SIZE + BOARD_X 
&& BOARD_Y <= mouse_y div TILE_SIZE <= BOARD_SIZE + BOARD_Y)
{
	if(global.isWaitingInput)
	{
		global.input = { x : (mouse_x div TILE_SIZE) - BOARD_X + 1, 
						 y : (mouse_y div TILE_SIZE) - BOARD_Y + 1}
	}
}