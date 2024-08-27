#include <SDL2/SDL.h>
#include <SDL2/SDL_render.h>
#include <iostream>
#include <vector>

class Screen {
  SDL_Event event;
  SDL_Window *window;
  SDL_Renderer *renderer;
  std::vector<SDL_FPoint> points;
  int scale = 2;

public:
  Screen() {
    SDL_Init(SDL_INIT_VIDEO);
    SDL_CreateWindowAndRenderer(640 * scale, 480 * scale, 0, ,
                                SDL_Renderer * *renderer);
  }
};
