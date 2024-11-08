#include <SDL2/SDL_rect.h>
#include <SDL2/SDL_render.h>
#include <SDL2/SDL_timer.h>
#include <stdlib.h>
#include <stdio.h>
#include <SDL2/SDL.h>
#include <stdbool.h>

int main() {

  SDL_Window *window = NULL;
  SDL_Renderer *renderer = NULL;

  // init sdl
  SDL_Init(SDL_INIT_EVERYTHING);
  // init window and renderer
  SDL_CreateWindowAndRenderer(640, 480, 0, &window, &renderer);
  SDL_SetRenderDrawColor(renderer, 0, 0, 0, 255);
  SDL_RenderClear(renderer);
  SDL_SetRenderDrawColor(renderer, 100, 100, 100, 255);

  while (true) {

    int x = 10;
    int y = 10;
    SDL_Rect r = {x, y, 20, 20};
    SDL_RenderFillRect(renderer, &r);
    x++;
    y++;
    if(x==20){ break; }

  }

  SDL_RenderPresent(renderer);
  SDL_Delay(1000);

  return 0;
}
