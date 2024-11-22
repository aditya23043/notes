#include <raylib.h>
#include <stdio.h>

#define WIDTH 800
#define HEIGHT 400
#define MAX_BUILDINGS 100

int main(int argc, char *argv[]){

    InitWindow(WIDTH, HEIGHT, "somethingidk");

    SetTargetFPS(144);


    Rectangle player = {
        400,
        280,
        40,
        40
    };

    Rectangle buildings[MAX_BUILDINGS] = { 0 };
    Color buildColors[MAX_BUILDINGS] = { 0 };

    int spacing = 0;

    for (int i = 0; i < MAX_BUILDINGS; i++) {
        buildings[i].width = (float)GetRandomValue(50, 200);
        buildings[i].height = (float)GetRandomValue(100, 800);
        buildings[i].y = HEIGHT - 100.0f - buildings[i].height;
        buildings[i].x = -6000.0f + spacing;

        spacing += (int)buildings[i].width;

        buildColors[i] = (Color){ GetRandomValue(0, 40), GetRandomValue(0, 40), GetRandomValue(0, 50), 255 };
    }

    Camera2D camera = { 0 };
    camera.target = (Vector2){ player.x + 20.0f, player.y + 20.0f };
    camera.offset = (Vector2){ WIDTH / 2.0f, HEIGHT / 2.0f };
    camera.rotation = 0.0f;
    camera.zoom = 1.0f;

    // MAIN LOOP
    while (!WindowShouldClose()) {

      // Updating

      if (IsKeyDown(KEY_RIGHT)) player.x += 2;
      else if (IsKeyDown(KEY_LEFT)) player.x -= 2;

      camera.target = (Vector2){ player.x + 20, player.y + 20 };

      if (IsKeyDown(KEY_A)) camera.rotation++;
      else if (IsKeyDown(KEY_D)) camera.rotation--;

      if (camera.rotation > 40) camera.rotation = 40;
      else if (camera.rotation < -40) camera.rotation = -40;

      camera.zoom += ((float)GetMouseWheelMove()*0.05f);

      if (camera.zoom > 3.0f) camera.zoom = 3.0f;
      else if (camera.zoom < 0.1f) camera.zoom = 0.1f;

      if (IsKeyPressed(KEY_R)) {
          camera.zoom = 1.0f;
          camera.rotation = 0.0f;
      }

      // Rendering
      BeginDrawing();

          ClearBackground(BLACK);

          BeginMode2D(camera);

            for (int i = 0; i < MAX_BUILDINGS; i++) DrawRectangleRec(buildings[i], buildColors[i]);

            DrawRectangleRec(player, RED);

          EndMode2D();

            DrawText("Free 2d camera controls:", 20, 20, 10, WHITE);
            DrawText("- Right/Left to move Offset", 40, 40, 10, WHITE);
            DrawText("- Mouse Wheel to Zoom in-out", 40, 60, 10, WHITE);
            DrawText("- A / S to Rotate", 40, 80, 10, WHITE);
            DrawText("- R to reset Zoom and Rotation", 40, 100, 10, WHITE);

      EndDrawing();

    }

    CloseWindow();

    return 0;

}
