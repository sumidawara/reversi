#macro BOARD_SIZE 8
#macro BOARD_X 2
#macro BOARD_Y 2
#macro TILE_SIZE 20

enum eState
{
	none = 0,
	black = 2,
	white = 3,
	wall = -1
}

tileBlackAndWhiteID = layer_tilemap_get_id(layer_get_id("TileBlackAndWhite"))
path_count = 0;
upper_text = ""
lower_text = ""

draw_set_font(Font1)
window_set_size(1080, 1080)
InitializeBoard()

global.isWaitingInput = false;
global.input = -1;
global.evaluateBoard =
[
	[0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
	[0,  30, -12,   0,  -1,  -1,   0, -12,  30, 0],
    [0, -12, -15,  -3,  -3,  -3,  -3, -15, -12, 0],
    [0,   0,  -3,   0,  -1,  -1,   0,  -3,   0, 0],
    [0,  -1,  -3,  -1,  -1,  -1,  -1,  -3,  -1, 0],
    [0,  -1,  -3,  -1,  -1,  -1,  -1,  -3,  -1, 0],
    [0,   0,  -3,   0,  -1,  -1,   0,  -3,   0, 0],
    [0, -12, -15,  -3,  -3,  -3,  -3, -15, -12, 0],
    [0,  30, -12,   0,  -1,  -1,   0, -12,  30, 0],
	[0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
]

global.isPlayerBlack = true
if(global.isPlayerBlack)
{
	playerTurn = true;
}
else
{
	playerTurn = false;
}