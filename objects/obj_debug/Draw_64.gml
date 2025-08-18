draw_set_font(fnt_gm_20)
draw_set_valign(fa_top)
draw_set_halign(fa_left)

var xx = 50;

var yy = 350;
for (var i = 0; i < array_length(global.playerList); i++)
{
	draw_text(xx , yy, "Player " + string(i));
    yy += 30;
	if (i < array_length(global.playerData))
	{
	var p2 = global.playerData[i];
    
    draw_text(xx + 20, yy, "Current Screen: " + string(p2.currentScreen));
    yy += 30;

    draw_text(xx + 20, yy, "Y Pos: " + string(p2.currentY));
    yy += 30;
    
    draw_text(xx + 20, yy, "Instance ID: " + string(p2.playerObject));
    yy += 40; // extra gap before the next player
	}
	
	var p = global.playerList[i];
	draw_text(xx + 20, yy, "SteamID: " + string(p.steamId));
    yy += 30;
    
    draw_text(xx + 20, yy, "Steam Name: " + string(p.steamName));
    yy += 30;
    
    draw_text(xx + 20, yy, "Player Number: " + string(p.playerNumber));
    yy += 30;
	    
    draw_text(xx + 20, yy, "Character: " + string(p.currentCharacter));
    yy += 30;
	
	draw_text(xx + 20, yy, "readyStatus: " + string(p.readyStatus));
    yy += 30;
	
}
