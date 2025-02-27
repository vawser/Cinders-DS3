#----------------------------------------
# Notes
#----------------------------------------
You'll need to create a vanilla save game before installing Cinders.
(Only needed the first time you install this mod. Not affected by updates) 
Without doing this, you'll get the "Save Data is Corrupted" message.

This mod only works if your game is in english (This can be done by changing the main language of Steam)
~ Settings -> Interface -> Select english

Recommended to move your save files (type %appdata%/DarkSoulsIII in your PC) elsewhere if you
don't want to lose your unmoded saves.

#----------------------------------------
# Installation
#----------------------------------------
Decompress your .zip file.

Drop the Cinders folder into your Dark Souls III Game directory, and the following files: modengine.ini, Dinput8.dll, HoodiePatcher.ini and HoodiePatcher.dll.

The Dark Souls III Game directory is normally: ~\steamapps\common\DARK SOULS III\Game\

After you did all the above go to modengine.ini and look for:
- LoadlooseParams (and set it to 1 if its not already)
- useModOverrideDirectory (and set it to 1 if its not already)
- modOverrideDirectory (\Cinders if it's not already)
^ This should be done by default with your download of Cinders but you can always check if everything
is correct.

If you want to play Online look for:
- blockNetworkAccess (and set it to 0)
Be aware that this action will surely get you flaged and banned.
That means you'll only be able to play with other banned people.

For Linux:
1 - Make sure you are running the game with Steam Play enabled
2 - Install the mod as per the instructions
3 - Add the following launch option to the game by going to Properties --> Set Launch Options: WINEDLLOVERRIDES="dinput8.dll=n,b" %command%

#----------------------------------------
# Updating
#----------------------------------------
Simply download the latest version (be it GitHub or Nexus Mods) and drop the Cinders folder 
~\steamapps\common\DARK SOULS III\Game\

#----------------------------------------
# Uninstallation
#----------------------------------------
Delete the dinput8.dll file. This will remove Mod Engine, thus disabling Cinders.

If you want to be sure that it's completely uninstalled move your Cinders folder, modengine.ini
and dinput8.dll to another folder away of your Game directory.

Be also sure to move your modded save files (%appdata%/DarkSoulsIII).

 