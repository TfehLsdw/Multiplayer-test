function scr_init_sprites()
{
	global.sprites = {
		char: [],
		charImg: [],
	}
	
	global.sprites.char[SPRITES_CHAR.BALLER] = spr_Baller;
	global.sprites.char[SPRITES_CHAR.MATAN] = spr_Matan;
	global.sprites.char[SPRITES_CHAR.RAMMUS] = spr_Rammus;
	
	global.sprites.charImg[SPRITES_CHARIMAGE.BALLER] = spr_imageBaller
	global.sprites.charImg[SPRITES_CHARIMAGE.MATAN] = spr_imageMatan
	global.sprites.charImg[SPRITES_CHARIMAGE.RAMMUS] = spr_imageRammus
}
