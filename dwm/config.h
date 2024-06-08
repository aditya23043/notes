/* See LICENSE file for copyright and license details. */
#include <X11/XF86keysym.h>

/* appearance */
static const unsigned int borderpx = 2; /* border pixel of windows */
static const int startwithgaps = 0;     /* 1 means gaps are used by default */
static const unsigned int gappx = 4; /* default gap between windows in pixels */
static const unsigned int snap = 32; /* snap pixel */
static const unsigned int systraypinning =
    0; /* 0: sloppy systray follows selected monitor, >0: pin systray to monitor
          X */
static const unsigned int systrayonleft =
    0; /* 0: systray in the right corner, >0: systray on left of status text */
static const unsigned int systrayspacing = 2; /* systray spacing */
static const int systraypinningfailfirst =
    1; /* 1: if pinning fails, display systray on the first monitor, False:
          display systray on the last monitor*/
static const int showsystray = 1; /* 0 means no systray */
static const int showbar = 0;     /* 0 means no bar */
static const int topbar = 1;      /* 0 means bottom bar */
static const char *fonts[] = {"JetBrainsMono NFM:style=Bold:size=10"};
static const char dmenufont[] = "JetBrainsMono NFM:style=Bold:size=10";
static const char norm_bg[] = "#16181d";
static const char norm_border[] = "#272a34";
static const char norm_fg[] = "#777777";
static const char sel_fg[] = "#000000";
static const char sel_bg[] = "#cd0245";
static const char *colors[][3] = {
    /*               fg         bg         border   */
    [SchemeNorm] = {norm_fg, norm_bg, norm_border},
    [SchemeSel] = {sel_fg, sel_bg, sel_bg},
    [SchemeStatus] = {norm_fg, norm_bg,
                      "#000000"}, // Statusbar right {text,background,not used
                                  // but cannot be empty}
    [SchemeTagsSel] = {sel_fg, sel_bg,
                       "#000000"}, // Tagbar left selected {text,background,not
                                   // used but cannot be empty}
    [SchemeTagsNorm] =
        {norm_fg, norm_bg,
         "#000000"}, // Tagbar left unselected {text,background,not used but
                     // cannot be empty}
    [SchemeInfoSel] =
        {norm_bg, norm_bg,
         "#000000"}, // infobar middle  selected {text,background,not used but
                     // cannot be empty}
    [SchemeInfoNorm] =
        {norm_fg, norm_bg,
         "#000000"}, // infobar middle  unselected {text,background,not used but
                     // cannot be empty}
};

/* tagging */
static const char *tags[] = {"1", "2", "3", "4", "5", "6", "7", "8", "9"};

static const Rule rules[] = {
    /* xprop(1):
     *	WM_CLASS(STRING) = instance, class
     *	WM_NAME(STRING) = title
     */
    /* class      instance    title       tags mask     isfloating   monitor */
    {"Gimp", NULL, NULL, 0, 1, -1},
    {"Firefox", NULL, NULL, 1 << 8, 0, -1},
};

/* layout(s) */
static const float mfact = 0.5; /* factor of master area size [0.05..0.95] */
static const int nmaster = 1;   /* number of clients in master area */
static const int resizehints =
    0; /* 1 means respect size hints in tiled resizals */
static const int lockfullscreen =
    1; /* 1 will force focus on the fullscreen window */

static const Layout layouts[] = {
    /* symbol     arrange function */
    {"[M]", monocle},
    {"[]=", tile}, /* first entry is default */
    {"><>", NULL}, /* no layout function means floating behavior */
};

/* key definitions */
#define MODKEY Mod4Mask
#define TAGKEYS(KEY, TAG)                                                      \
  {MODKEY, KEY, view, {.ui = 1 << TAG}},                                       \
      {MODKEY | ControlMask, KEY, toggleview, {.ui = 1 << TAG}},               \
      {MODKEY | ShiftMask, KEY, tag, {.ui = 1 << TAG}},                        \
      {MODKEY | ControlMask | ShiftMask, KEY, toggletag, {.ui = 1 << TAG}},

/* helper for spawning shell commands in the pre dwm-5.0 fashion */
#define SHCMD(cmd)                                                             \
  {                                                                            \
    .v = (const char *[]) { "/bin/sh", "-c", cmd, NULL }                       \
  }

/* commands */
static char dmenumon[2] =
    "0"; /* component of dmenucmd, manipulated in spawn() */
static const char *dmenucmd[] = {
    "dmenu_run", "-m",    dmenumon, "-fn",  dmenufont, "-nb",  norm_bg,
    "-nf",       norm_fg, "-sb",    sel_bg, "-sf",     sel_fg, NULL};
static const char *termcmd[] = {"st", NULL};

static const Key keys[] = {
    /* modifier                     key        function        argument */
    {MODKEY, XK_p, spawn, {.v = dmenucmd}},
    {MODKEY, XK_Return, spawn, {.v = termcmd}},
    {MODKEY, XK_b, togglebar, {0}},
    {MODKEY, XK_j, focusstack, {.i = +1}},
    {MODKEY, XK_k, focusstack, {.i = -1}},
    {MODKEY, XK_i, incnmaster, {.i = +1}},
    {MODKEY, XK_d, incnmaster, {.i = -1}},
    {MODKEY, XK_h, setmfact, {.f = -0.05}},
    {MODKEY, XK_l, setmfact, {.f = +0.05}},
    {MODKEY | ShiftMask, XK_Return, zoom, {0}},
    {MODKEY, XK_Tab, view, {0}},
    {MODKEY | ShiftMask, XK_c, killclient, {0}},
    {MODKEY, XK_t, setlayout, {.v = &layouts[1]}},
    {MODKEY, XK_f, setlayout, {.v = &layouts[2]}},
    {MODKEY, XK_m, setlayout, {.v = &layouts[0]}},
    {MODKEY, XK_space, setlayout, {0}},
    {MODKEY | ShiftMask, XK_space, togglefloating, {0}},
    {MODKEY, XK_0, view, {.ui = ~0}},
    {MODKEY | ShiftMask, XK_0, tag, {.ui = ~0}},
    {MODKEY, XK_comma, focusmon, {.i = -1}},
    {MODKEY, XK_period, focusmon, {.i = +1}},
    {MODKEY | ShiftMask, XK_comma, tagmon, {.i = -1}},
    {MODKEY | ShiftMask, XK_period, tagmon, {.i = +1}},
    {MODKEY, XK_minus, setgaps, {.i = -5}},
    {MODKEY, XK_equal, setgaps, {.i = +5}},
    {MODKEY | ShiftMask, XK_minus, setgaps, {.i = GAP_RESET}},
    {MODKEY | ShiftMask, XK_equal, setgaps, {.i = GAP_TOGGLE}},
    TAGKEYS(XK_1, 0) TAGKEYS(XK_2, 1) TAGKEYS(XK_3, 2) TAGKEYS(XK_4, 3)
        TAGKEYS(XK_5, 4) TAGKEYS(XK_6, 5) TAGKEYS(XK_7, 6) TAGKEYS(XK_8, 7)
            TAGKEYS(XK_9, 8){MODKEY | ShiftMask, XK_q, quit, {0}},
    {0, XF86XK_MonBrightnessUp, spawn, SHCMD("sudo ybacklight -inc 5%")},
    {0, XF86XK_MonBrightnessDown, spawn, SHCMD("sudo ybacklight -dec 5%")},
    {0, XF86XK_AudioLowerVolume, spawn,
     SHCMD("pactl set-sink-volume @DEFAULT_SINK@ -5%")},
    {0, XF86XK_AudioRaiseVolume, spawn,
     SHCMD("pactl set-sink-volume @DEFAULT_SINK@ +5%")},
    {0, XF86XK_AudioMute, spawn,
     SHCMD("pactl set-sink-mute @DEFAULT_SINK@ toggle")},
};

/* button definitions */
/* click can be ClkTagBar, ClkLtSymbol, ClkStatusText, ClkWinTitle,
 * ClkClientWin, or ClkRootWin */
static const Button buttons[] = {
    /* click                event mask      button          function argument */
    {ClkLtSymbol, 0, Button1, setlayout, {0}},
    {ClkLtSymbol, 0, Button3, setlayout, {.v = &layouts[2]}},
    {ClkWinTitle, 0, Button2, zoom, {0}},
    {ClkStatusText, 0, Button2, spawn, {.v = termcmd}},
    {ClkClientWin, MODKEY, Button1, movemouse, {0}},
    {ClkClientWin, MODKEY, Button2, togglefloating, {0}},
    {ClkClientWin, MODKEY, Button3, resizemouse, {0}},
    {ClkTagBar, 0, Button1, view, {0}},
    {ClkTagBar, 0, Button3, toggleview, {0}},
    {ClkTagBar, MODKEY, Button1, tag, {0}},
    {ClkTagBar, MODKEY, Button3, toggletag, {0}},
};
