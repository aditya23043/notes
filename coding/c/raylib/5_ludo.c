#include <raylib.h>
#include <stdio.h>

#define WIDTH 1080/2
#define HEIGHT 1920/2

#define MAP_SIZE 15
#define PADDING 1
#define BLOCK_SIZE 32

#define TOP_BOARD_PADDING 208

int main(int argc, char *argv[]){

  char fps[4];

  Rectangle map_posn[MAP_SIZE][MAP_SIZE];
  Color map_col[MAP_SIZE][MAP_SIZE];

  for (int i = 0; i < MAP_SIZE; i++) {
      for (int j = 0; j < MAP_SIZE; j++) {
          map_posn[i][j].x = (i + 1) * BLOCK_SIZE;
          map_posn[i][j].y = (j + 1) * BLOCK_SIZE + TOP_BOARD_PADDING;
          map_posn[i][j].width = BLOCK_SIZE - PADDING;
          map_posn[i][j].height = BLOCK_SIZE - PADDING;

          if (j == 0 && i < 6 || i == 0 && j < 6 || i == 5 && j < 6 || j == 5 && i < 5 || i >= 2 && j >=2 && i <= 3 && j <= 3 || j == 7 && i > 0 && i < 6 || i == 1 && j == 6)
            map_col[i][j] = GREEN;
          else if (j == 0 && i >= 15-6 || i == 15-6 && j < 6 || i == 14 && j < 6 || j == 5 && i >= 15-6 || i >= 15-4 && j >=2 && i <= 15-3 && j <= 3 || i == 7 && j > 0 && j < 6 || j == 1 && i == 8)
            map_col[i][j] = YELLOW;
          else if (j == 15-6 && i < 6 || i == 0 && j >= 15-6 || i == 5 && j >= 15-6 || j == 14 && i < 5 || i >= 2 && j >= 15-4 && i <= 3 && j <= 15-3 || i == 7 && j > 8 && j < 14 || j == 13 && i == 6)
            map_col[i][j] = RED;
          else if (j == 15-6 && i >= 15-6 || i == 15-6 && j > 15-6 || i == 14 && j > 15-6 || j == 14 && i >= 15-6 || i >= 15-4 && j >= 15-4 && i <= 15-3 && j <= 15-3 || j == 7 && i > 8 && i < 14 || i == 13 && j == 8)
            map_col[i][j] = BLUE;
          else
            map_col[i][j] = WHITE;

      }
  }

    InitWindow(WIDTH, HEIGHT, "somethingidk");

    SetTargetFPS(144);

    while (!WindowShouldClose()) {

      // Updating

      // Rendering
      BeginDrawing();

          ClearBackground(BLACK);
          sprintf(fps, "%d", GetFPS());
          /* DrawText(fps, 540-40, 10, 20, WHITE); */

          for (int i = 0; i < MAP_SIZE; i++) {
              for (int j = 0; j < MAP_SIZE; j++) {
                if (i > 5 && i < 9 && j > 5 && j < 9) {
                } else {
                    DrawRectangleRec(map_posn[i][j], map_col[i][j]);
                }
              }
          }
          DrawTriangle(
              (Vector2){7*BLOCK_SIZE, 7*BLOCK_SIZE+TOP_BOARD_PADDING},
              (Vector2){7*BLOCK_SIZE, 10*BLOCK_SIZE+TOP_BOARD_PADDING-PADDING},
              (Vector2){8.5f*BLOCK_SIZE-1, 8.5f*BLOCK_SIZE+TOP_BOARD_PADDING},
              GREEN
          );

          DrawTriangle(
              (Vector2){8.5f*BLOCK_SIZE-1, 8.5f*BLOCK_SIZE+TOP_BOARD_PADDING},
              (Vector2){10*BLOCK_SIZE-PADDING, 10*BLOCK_SIZE+TOP_BOARD_PADDING},
              (Vector2){10*BLOCK_SIZE-PADDING, 7*BLOCK_SIZE+TOP_BOARD_PADDING},
              BLUE
          );

          DrawTriangle(
              (Vector2){8.5f*BLOCK_SIZE, 8.5f*BLOCK_SIZE+TOP_BOARD_PADDING},
              (Vector2){7*BLOCK_SIZE, 10*BLOCK_SIZE+TOP_BOARD_PADDING-PADDING},
              (Vector2){10*BLOCK_SIZE-1, 10*BLOCK_SIZE+TOP_BOARD_PADDING-PADDING},
              RED
          );

          DrawTriangle(
              (Vector2){7*BLOCK_SIZE, 7*BLOCK_SIZE+TOP_BOARD_PADDING},
              (Vector2){8.5f*BLOCK_SIZE-1, 8.5f*BLOCK_SIZE+TOP_BOARD_PADDING},
              (Vector2){10*BLOCK_SIZE-PADDING, 7*BLOCK_SIZE+TOP_BOARD_PADDING},
              YELLOW
          );


      EndDrawing();

    }

    CloseWindow();

    return 0;

}
