#include <raylib.h>
#include <stdio.h>

#define WIDTH 800
#define HEIGHT 400

int main(int argc, char *argv[]){

    InitWindow(WIDTH, HEIGHT, "somethingidk");

    SetTargetFPS(144);

    while (!WindowShouldClose()) {

      // Rendering
      BeginDrawing();

          ClearBackground(BLACK);
          DrawText("somthing bruh idk what you just did lmao", 20, 20, 30, WHITE);

      EndDrawing();

    }

    CloseWindow();

    return 0;

}
