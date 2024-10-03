#include <X11/X.h>
#include <X11/Xlib.h>
#include <X11/Xutil.h>
#include <X11/Xft/Xft.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

int main(int argc, char *argv[]) {

  Display *display;
  Window window;
  XEvent event;
  int screen;

  XftDraw *draw;
  XftFont *font;
  XftColor color;


  display = XOpenDisplay(NULL);
  screen = DefaultScreen(display);
  window = XCreateSimpleWindow(display, RootWindow(display, screen), 10, 10, 200, 100, 1, WhitePixel(display, screen), BlackPixel(display, screen));
  draw = XftDrawCreate(display, window, DefaultVisual(display, screen), DefaultColormap(display, screen));
  font = XftFontOpenName(display, screen, "-microsoft-caskaydiacove nf-bold-r-normal--0-0-0-0-p-0-iso8859-1");
  if (!font) {
      fprintf(stderr, "Failed to load font: SF Mono\n");
      exit(1);
  }
  XftColorAllocName(display, DefaultVisual(display, screen), DefaultColormap(display, screen), "white", &color);

  XSelectInput(display, window, ExposureMask | ButtonPressMask | KeyPressMask);
  XMapWindow(display, window);

  while (1) {
    XNextEvent(display, &event);
    if (event.type == Expose) {
      XftDrawStringUtf8(draw, &color, font, 50, 50, (const FcChar8 *)"Play/Pause!", strlen("Play/Pause!"));
    }
    if (event.type == ButtonPress) {
      system("playerctl play-pause");
    }
    if (event.type == KeyPress) {
      if (XLookupKeysym(&event.xkey, 0) == XK_q) {
        break;
      }
    }
  }

  XftDrawDestroy(draw);
  XftFontClose(display, font);
  XCloseDisplay(display);

  return 0;
}

