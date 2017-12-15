//Includes
#include "common\skyscript.h"
#include "common\obscript.h"
#include "common\types.h"
#include "common\enums.h"
#include "common\plugin.h"

// Constants
#define CONFIG_FILE "quitgame.ini"	// .ini included for the mod
#define SCR_NAME "Quit Game"		// Name of the mod

//==================================================================================
// Entry point for the program
//==================================================================================
void main()
{
	// Gets the key the user has selected from the .ini
	BYTE key = IniReadInt(CONFIG_FILE, "main", "exit_key", 0);

	// Run the script while the user is in-game
	while (TRUE)
	{
		// If the user selected key is pressed do the following
		if (GetKeyPressed(key))
		{
			// Quite the game
			Debug::QuitGame();
		}
		// This is a required, game crashes without it
		Wait(0);
	}
}// End Main


