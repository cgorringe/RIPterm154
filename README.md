## RIPterm 1.54

This is the original MS-DOS RIPterm 1.54 freeware software (binary) used for calling RIP-enabled BBSs back in the 1990s. This program used to be freely available for download on BBSs. It was created by TeleGrafix Communications, Inc.

I included a script to make it easier to contact BBSs using Telnet. This script is set up to use the [DOSBox](https://www.dosbox.com) emulator to run RIPterm, which you'll want to install first.

The [Remote Imaging Protocol](https://en.wikipedia.org/wiki/Remote_Imaging_Protocol) (RIP) was a vector graphics encoding used in [Bulletin Board Systems](https://en.wikipedia.org/wiki/Bulletin_board_system) (BBSs). It was invented in 1992 as a new standard for drawing graphics in the terminal, also known as *RIPscrip*. It was designed in such a way to support existing BBS software, while adding vector graphics capability, such as drawing lines and shapes, similar to today's SVG format on the web. Buttons could be rendered that when clicked, would send text through the terminal as if you pressed the keys on the keyboard. It gave a GUI interface to existing menus, and some door games made use of it too. Just like the underground [ANSI art](https://en.wikipedia.org/wiki/ANSI_art) scene where artists made use of colored text characters, there was a RIP art scene too. There's a large collection of RIP art available to download at [16colors](https://16colo.rs/search/?e=RIP&r=500).

**RIPterm 1.54** ran in MS-DOS and used an older EGA graphics mode with a resolution of 640 x 350 px and 16 colors which could be redefined.

I'm working on a complete rewrite of RIPterm in Javascript, called [RIPtermJS](https://github.com/cgorringe/RIPtermJS). This program will make it easier to display RIP art and communicate with RIP-enabled BBSs and Door Games using a web browser canvas interface.


### Install Dependencies: DOSBox

Download from the [DOSBox](https://www.dosbox.com) website, or follow these directions:

#### macOS using Homebrew
```
brew install dosbox
```

#### Ubuntu / Debian Linux
```
apt-get install dosbox
```

#### Windows

The included script is not designed to run on Windows natively. It could work if using the Linux subsystem. I haven't tested it on Windows.


### How to Use

Run this script located in the root directory:

```
 ./ripterm server port
```

For example:

```
 ./ripterm bbs.example.com 23
```

The default Telnet port is 23, but many BBSs may use a different port number.

**Some tips while running RIPterm in DOSBox:**

 - To release the mouse pointer so that you may use it outside the window again, tap `CTRL-F10`. (On a mac this may be `FN-CTRL-F10`.)
 - To run Full Screen, tap `ALT-ENTER`. Do again to return to a window.
 - From within RIPterm, tap `ALT-X` then Enter to exit the program.
 - Right-click and hold your right mouse button to show menu items.
 - The default icons used by RIPterm are located in `/DOS/RIPTERM/ICONS/`. I included icons from the popular door game *Legend of the Red Dragon*. If you discover that you are missing any icons for a particular door game, and happen to find them, then copy them to this directory so that RIPterm can find them. Also please let me know or create a *Pull Request* on Github with the new icons if you'd like to see them added to the repo.
