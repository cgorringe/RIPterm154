## RIPterm 1.54

This is the original MS-DOS RIPterm 1.54 freeware software (binary) used for calling RIP-enabled BBSs in the 1990s. This program used to be freely available for download on BBSs. It was created by TeleGrafix Communications, Inc.

Included is a script to make it easier to contact BBSs using Telnet. This script is set up to use the [DOSBox](https://www.dosbox.com) emulator to run RIPterm, which must be installed first.

**RIPterm 1.54** runs in MS-DOS and uses an EGA graphics mode at 640 x 350 px and 16 colors which can be redefined.

#### Related Links

- [Remote Imaging Protocol](https://en.wikipedia.org/wiki/Remote_Imaging_Protocol) (RIP) on Wikipedia.
- [Bulletin Board System](https://en.wikipedia.org/wiki/Bulletin_board_system) (BBS) on Wikipedia.
- [Collecton of RIP Art](https://16colo.rs/tags/content/ripscrip) at [16colo.rs](https://16colo.rs).
- [RIPtermJS](https://github.com/cgorringe/RIPtermJS) - A rewrite of RIPterm in Javascript (in progress)


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
 ./ripterm.sh server port
```

For example:

```
 ./ripterm.sh bbs.example.com 23
```

The default Telnet port is 23, but many BBSs may use a different port number.

**Some tips while running RIPterm in DOSBox:**

 - To release the mouse pointer so that you may use it outside the window again, tap `CTRL-F10`. (On a mac this may be `FN-CTRL-F10`.)
 - To run Full Screen, tap `ALT-ENTER`. Do again to return to a window.
 - From within RIPterm, tap `ALT-X` then Enter to exit the program.
 - Right-click and hold your right mouse button to show menu items.
 - The default icons used by RIPterm are located in `/DOS/RIPTERM/ICONS/`. I included icons from the popular door game *Legend of the Red Dragon*. If you discover that you are missing any icons for a particular door game, and happen to find them, then copy them to this directory so that RIPterm can find them. Also please let me know or create a *Pull Request* on Github with the new icons if you'd like to see them added to the repo.
