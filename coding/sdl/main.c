#include <SDL2/SDL_events.h>
#include <SDL2/SDL_surface.h>
#include <SDL2/SDL_video.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <SDL2/SDL.h>
#include <stdbool.h>

const int SCREEN_WIDTH = 1280;
const int SCREEN_HEIGHT = 720;

int main(int argc, char *argv[]) {

  SDL_Window *window = NULL;

  SDL_Surface *surface = NULL;

  SDL_Init(SDL_INIT_VIDEO);
  window = SDL_CreateWindow("DOOM BUT BETTERRR", SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED, SCREEN_WIDTH, SCREEN_HEIGHT, SDL_WINDOW_SHOWN);
  surface = SDL_GetWindowSurface(window);

  SDL_FillRect(surface, NULL, SDL_MapRGB(surface->format, 0x12, 0x12, 0x12));

  SDL_UpdateWindowSurface(window);
  
  SDL_Event e;
  bool quit = false;
  while(!quit){
    SDL_PollEvent(&e);
    if(e.type == SDL_KEYDOWN){
      if(e.key.keysym.sym == SDLK_q){
        quit = true;
      }
    }
  }

  SDL_DestroyWindow(window);
  printf("%d", surface);
  SDL_Quit();

  return 0;
}
