#include <raylib.h>
#include <stdio.h>

#define WIDTH 800
#define HEIGHT 400

int main(int argc, char *argv[]){

    Vector2 ball_position = {
        (float)WIDTH / 2,
        (float)HEIGHT / 2
    };

    InitWindow(WIDTH, HEIGHT, "somethingidk");

    SetTargetFPS(144);

    while (!WindowShouldClose()) {

      // Updating

      if(IsKeyDown(KEY_RIGHT))
          ball_position.x += 2.0f;
      if(IsKeyDown(KEY_LEFT))
          ball_position.x -= 2.0f;
      if(IsKeyDown(KEY_UP))
          ball_position.y -= 2.0f;
      if(IsKeyDown(KEY_DOWN))
          ball_position.y += 2.0f;

      // Rendering
      BeginDrawing();

          ClearBackground(BLACK);
          DrawText("somthing bruh idk what you just did lmao", 20, 20, 30, WHITE);

          DrawCircleV(ball_position, 50, RED);

      EndDrawing();

    }

    CloseWindow();

    return 0;

}
