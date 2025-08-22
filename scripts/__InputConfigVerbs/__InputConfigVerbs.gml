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
	   SCREEN_TRADE,
	   SCREEN_MOVE,
	   BACK_TO_MAIN_MENU,
	   TOGGLE_FULLSCREEN
    }
	
    InputDefineVerb(INPUT_VERB.SHOW_IMAGE_SELF,  "showImageSelf",  ord("1"), undefined);
	InputDefineVerb(INPUT_VERB.SHOW_IMAGE_OTHER, "showImageOther", ord("2"), undefined);
	InputDefineVerb(INPUT_VERB.SHOW_IMAGE_BOTH, "showImageBoth", ord("3"), undefined);
	InputDefineVerb(INPUT_VERB.MOVE_UP, "moveUp", ord("W"), undefined);
	InputDefineVerb(INPUT_VERB.MOVE_DOWN, "moveDown", ord("S"), undefined);
	InputDefineVerb(INPUT_VERB.SCREEN_TRADE, "screenTrade", ord("Q"), undefined);
	InputDefineVerb(INPUT_VERB.SCREEN_MOVE, "screenMove", ord("C"), undefined);
	InputDefineVerb(INPUT_VERB.BACK_TO_MAIN_MENU, "backToMainMenu", ord("B"), undefined);
	InputDefineVerb(INPUT_VERB.TOGGLE_FULLSCREEN, "toggleFullscreen", ord("F"), undefined);
	
    enum INPUT_CLUSTER
    {
        //Add your own clusters here!
        //Clusters are used for two-dimensional checkers (InputDirection() etc.)
        NAVIGATION,
    }
    
    
}
