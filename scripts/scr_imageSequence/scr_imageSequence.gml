///@self obj_player
///@arg _charIndex the index of the character to play the sounds and visuals of
///@arg _toWho who needs to play the sequence 0 = self, 1 = other, 2 = both
function scr_triggerImageSequence(_charIndex, _toWho)
{
	switch (_toWho)
	{
		case 0:
			scr_imageSequence(_charIndex)
			break;
			
		case 1:
			scr_sendImageSequence(scr_otherPlayerId(), _charIndex)
		
			break;
			
		case 2:
			scr_sendImageSequence(scr_otherPlayerId(), _charIndex)
			scr_imageSequence(_charIndex)
			break;
	}
}

function scr_imageSequence(_characterIndex)
{
	instance_create_depth(0,0,0,obj_imageSequence,{currentSprite: global.sprites.charImg[_characterIndex]})
	scr_playSfx(_characterIndex)
}