Hack-O-Matic III READ ME


1 - What is Hack-O-Matic III ?

Hack-O-Matic III (referred as HOM3 from now on) is a program you can use to edit the graphics in Atari roms. Editing them by hand would be pretty painful because you would have to do a lot of hexadecimal-binary-hexadecimal conversion. HOM3 displays the graphics as nice little boxes you can edit just by clicking on them.


2 - Basic editing

Editing in HOM3 is made quite as simple as possible. All you have to do is to open a rom and start editing! Well, there's a little more than that. When you open the rom you'll probably see a grid with random boxes in it. Don't touch them! They're Atari 2600 machine language and you don't want to change it unless know what you're doing. Scroll down until you see some recognizable shapes (it helps to play the game in an emulator a bit before you start editing) If the graphics are upside down, just select Edit/Flip and they'll appear the right way round. Now it's time to edit. Use your artistic talent and click the boxes on the grid to reverse them. You have to keep the graphics the same size as the original ones (or smaller). Otherwise you would edit the code or the next graphic image. When you're done, save the new file (you should always save with a different filename than the original, in case something broke while you edited the ROM.) and you're done! Open the file in your favourite emulator and play your new hack.


3 - Selecting and Copy&Paste

Selecting is done by clicking and dragging your mouse over the offsets on the left. If you need to select more than one page, drag your mouse to the bottom of the window.
When you've selected the area select Edit/Copy, right click the editing area and click Copy or press CTRL+C. Select the destination area for by selecting it. The selected area will be pasted from the start of the selecting. Select Edit/Paste, right click the editing area and click Paste or press CTRL+V. Voila!


4 - Emulator launcher

HOM3 has an option to quickly launch your favourite emulator to test the ROM. You select the emulator by selecting Emulator/Select from the menu. Type the path of the emulator into the box or click the Browse button. You can also add any command line parameters to it. Use %PATH% to specify where in the path should HOM3 insert the ROM's path and filename. You're all set! Click Emulator/Launch or hit F5 to test your ROM. NOTE: When you launch the emulator the current file will be saved!


5 - Hex and binary editing

HOM3 includes a neat little hex and binary editor. You use it by clicking on any hex or binary value on the right side of the editing area and start typing binary or hex. You move down using Enter and up using Backspace (couldn't use the arrow keys because they were used for scrolling.) When you type in a hex or binary digit, every value is moved left and the new value replaces the old rightmost value. That way you can easilly just type in a new binary or hex number and not worry about being in the middle of typing in an old one.


6 - TIA Display Palette
HOM3 inludes a TIA Display Palette for NTSC and PAL.  Using the Palette you can select a color that will be copied to the clipboard.  You can paste the hex code into the editor or double click the hex code cell to past the code.


7 - Flip

In some Atari 2600 games the graphics are stored upside down. Click Edit/Flip or select it from the right-click menu (or strike CTRL+F) and the whole file will be reversed. When you try to save a flipped ROM HOM3 will warn you about the file being flipped. You should select yes because a flipped ROM will probably not run in an emulator.


8 - The menus

FILE

Open - Opens a file for editing
Save - Saves the current file
Save as - Saves the currently loaded file with a different name
Exit - Exits the program (d'oh)

EDIT (also available by right-clicking the canvas)

Copy - Copies the currently selected region to the clipboard
Paste - Pastes the data in the clipboard to the currently selected offset
Open TIA Palette - Opens a window with the TIA Display colors (NTSC/PAL)
Flip - Reverses the contents of the file. This is because sometimes the graphics are stored 
upside down.

EMULATOR

Select - Selects the emulator to be used with the quick launch option.
Launch! - Launches the selected emulator to test the rom.

HELP

Readme - Displays this window
About - Displays info about the author...


9 - Known bugs

None

10 - Contact


E-MAIL: jeff@wierer.net

HACK-O-MATIC ][ http://www.dacodez.tk/
HACK-O-MATIC    http://www.kudla.org/hackomatic/