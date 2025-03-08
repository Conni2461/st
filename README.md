# st fork - simple terminal

[st](st.suckless.org) is a simple terminal emulator for X which sucks less.

## Requirements

In order to build st you need the Xlib header files.

Optional (For [shortcuts](#Shortcuts)):
- dmenu
- xdg-open
- xclip


## Installation

Edit config.mk to match your local setup (st is installed into
the /usr/local namespace by default).

Afterwards enter the following command to build and install st (if
necessary as root):

	make clean install


## Running st

If you did not install st with make clean install, you must compile
the st terminfo entry with the following command:

	tic -sx st.info

See the man page for additional details.


## Shortcuts

All shortcuts can be found in the manpage.

| Key                 | Function                                                      |
| ------------------- | ------------------------------------------------------------- |
| Alt + PgUp          | Scroll up 1 page                                              |
| Alt + PgDown        | Scroll down 1 page                                            |
| Alt + u             | Scroll up 1 page                                              |
| Alt + d             | Scroll down 1 page                                            |
| Alt + k             | Scroll up 1 line                                              |
| Alt + j             | Scroll down 1 line                                            |
| Alt + Up            | Scroll up 1 line                                              |
| Alt + Down          | Scroll down 1 line                                            |
| Alt + Shift + H     | Reset zoom                                                    |
| Alt + Shift + Up    | Zoom in - small steps                                         |
| Alt + Shift + Down  | Zoom out - small steps                                        |
| Alt + Shift + K     | Zoom in - small steps                                         |
| Alt + Shift + J     | Zoom out - small steps                                        |
| Alt + plus          | Zoom in - small steps                                         |
| Alt + minus         | Zoom out - small steps                                        |
| Alt + Shift + D     | Zoom in - big steps                                           |
| Alt + Shift + U     | Zoom out - big steps                                          |
| Alt + l             | Show all links in dmenu and open selected one with xdg-open   |
| Alt + y             | Show all links in dmenu und copy selected one with xclip      |


## Applied Patches

- [hidecursor](https://st.suckless.org/patches/hidecursor/st-hidecursor-0.8.3.diff): Hides the mousecursor as soon as you start typing.
- [spoiler](https://st.suckless.org/patches/spoiler/st-spoiler-20180309-c5ba9c0.diff): Use inverted defaultbg/fg for selection when bg/fg are the same.
- [scrollback](https://st.suckless.org/patches/scrollback/st-scrollback-ringbuffer-0.9.2.diff): Allows you to scrollback in history. No mouse support.
- [externalpipe](https://st.suckless.org/patches/externalpipe/st-externalpipe-0.8.5.diff): Allows you to pipe the terminalscreen to an external command.
- [anysize](https://st.suckless.org/patches/anysize/st-anysize-20220718-baa9357.diff): Patch, will remove unsightly gaps between windows
- [newterm](https://st.suckless.org/patches/newterm/st-newterm-0.9.diff): New terminal in current directory
- [font2](https://st.suckless.org/patches/font2/st-font2-0.8.5.diff): Adds field for spare fonts
