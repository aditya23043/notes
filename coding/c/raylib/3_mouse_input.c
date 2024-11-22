#include <raylib.h>
#include <stdio.h>

#define WIDTH 800
#define HEIGHT 400

int main(int argc, char *argv[]){

    Vector2 ball_position = {
        (float)WIDTH / 2,
        (float)HEIGHT / 2
    };

    Color ball_color = WHITE;

    InitWindow(WIDTH, HEIGHT, "somethingidk");

    SetTargetFPS(144);

    while (!WindowShouldClose()) {

      // Updating
      ball_position = GetMousePosition();

      if (IsMouseButtonPressed(MOUSE_BUTTON_LEFT)) ball_color = MAROON;
      else if (IsMouseButtonPressed(MOUSE_BUTTON_MIDDLE)) ball_color = LIME;
      else if (IsMouseButtonPressed(MOUSE_BUTTON_RIGHT)) ball_color = DARKBLUE;
      else if (IsMouseButtonPressed(MOUSE_BUTTON_SIDE)) ball_color = PURPLE;
      else if (IsMouseButtonPressed(MOUSE_BUTTON_EXTRA)) ball_color = YELLOW;
      else if (IsMouseButtonPressed(MOUSE_BUTTON_FORWARD)) ball_color = ORANGE;
      else if (IsMouseButtonPressed(MOUSE_BUTTON_BACK)) ball_color = BEIGE;

      // Rendering
      BeginDrawing();

          ClearBackground(BLACK);
          DrawText("somthing bruh idk what you just did lmao", 20, 20, 30, WHITE);

          DrawCircleV(ball_position, 50, ball_color);

      EndDrawing();

    }

    CloseWindow();

    return 0;

}
