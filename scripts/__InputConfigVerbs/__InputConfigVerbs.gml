function __InputConfigVerbs()
{
    enum INPUT_VERB
    {
        //Add your own verbs here!
       SHOW_IMAGE_SELF,
	   SHOW_IMAGE_OTHER,
	   SHOW_IMAGE_BOTH,
	   MOVE_UP,
	   MOVE_DOWN,
	   TRADE_SCREEN,
	   SWITCH_SCREEN,
	   BACK_TO_MAIN_MENU,
	   TOGGLE_FULLSCREEN
    }
	
    InputDefineVerb(INPUT_VERB.SHOW_IMAGE_SELF,  "showImageSelf",  ord("1"), undefined);
	InputDefineVerb(INPUT_VERB.SHOW_IMAGE_OTHER, "showImageOther", ord("2"), undefined);
	InputDefineVerb(INPUT_VERB.SHOW_IMAGE_BOTH, "showImageOther", ord("2"), undefined);
	InputDefineVerb(INPUT_VERB.MOVE_UP, "showImageOther", ord("W"), undefined);
	InputDefineVerb(INPUT_VERB.MOVE_DOWN, "showImageOther", ord("S"), undefined);
	InputDefineVerb(INPUT_VERB.TRADE_SCREEN, "showImageOther", ord("Q"), undefined);
	InputDefineVerb(INPUT_VERB.SWITCH_SCREEN, "showImageOther", ord("C"), undefined);
	InputDefineVerb(INPUT_VERB.BACK_TO_MAIN_MENU, "showImageOther", ord("B"), undefined);
	InputDefineVerb(INPUT_VERB.TOGGLE_FULLSCREEN, "showImageOther", ord("F"), undefined);
	
    enum INPUT_CLUSTER
    {
        //Add your own clusters here!
        //Clusters are used for two-dimensional checkers (InputDirection() etc.)
        NAVIGATION,
    }
    
    
}
