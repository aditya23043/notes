#include <raylib.h>
#include <stdio.h>

#define WIDTH 1080/2
#define HEIGHT 1920/2

#define MAP_SIZE 15
#define PADDING 1
#define CIRCLE_PADDING 2
#define BLOCK_SIZE 32

#define TOP_BOARD_PADDING 208

int main(int argc, char *argv[]){

  char fps[4];

  const Color _YELLOW = GetColor(0xffde17ff);
  const Color _GREEN = GetColor(0x00a348ff);
  const Color _BLUE = GetColor(0x29adffff);
  const Color _RED = RED;

  Rectangle map_posn[MAP_SIZE][MAP_SIZE];
  Color map_col[MAP_SIZE][MAP_SIZE];

  for (int i = 0; i < MAP_SIZE; i++) {
      for (int j = 0; j < MAP_SIZE; j++) {

          map_posn[i][j].x = (i + 1) * BLOCK_SIZE;
          map_posn[i][j].y = (j + 1) * BLOCK_SIZE + TOP_BOARD_PADDING;
          map_posn[i][j].width = BLOCK_SIZE - PADDING;
          map_posn[i][j].height = BLOCK_SIZE - PADDING;

          if (j == 0 && i < 6 || i == 0 && j < 6 || i == 5 && j < 6 || j == 5 && i < 5 || j == 7 && i > 0 && i < 6 || i == 1 && j == 6)
            map_col[i][j] = _GREEN;
          else if (j == 0 && i >= 15-6 || i == 15-6 && j < 6 || i == 14 && j < 6 || j == 5 && i >= 15-6 || i == 7 && j > 0 && j < 6 || j == 1 && i == 8)
            map_col[i][j] = _YELLOW;
          else if (j == 15-6 && i < 6 || i == 0 && j >= 15-6 || i == 5 && j >= 15-6 || j == 14 && i < 5 || i == 7 && j > 8 && j < 14 || j == 13 && i == 6)
            map_col[i][j] = _RED;
          else if (j == 15-6 && i >= 15-6 || i == 15-6 && j > 15-6 || i == 14 && j > 15-6 || j == 14 && i >= 15-6 || j == 7 && i > 8 && i < 14 || i == 13 && j == 8)
            map_col[i][j] = _BLUE;
          else
          map_col[i][j] = WHITE;

      }
  }

    InitWindow(WIDTH, HEIGHT, "Ludo - Adi");

    Texture bg = LoadTexture("bg.png");

    SetTargetFPS(144);

    while (!WindowShouldClose()) {

      // Updating

      // Rendering
      BeginDrawing();

          ClearBackground(GetColor(0xffffffff));

          // background image
          DrawTexture(bg, 0, 0, WHITE);

          // main black canvas
          DrawRectangle(BLOCK_SIZE, TOP_BOARD_PADDING+BLOCK_SIZE, BLOCK_SIZE*MAP_SIZE, BLOCK_SIZE*MAP_SIZE, BLACK);

          // show fps
          sprintf(fps, "%d", GetFPS());
          DrawText(fps, 540-40, 10, 20, WHITE);

          // grids
          for (int i = 0; i < MAP_SIZE; i++) {
              for (int j = 0; j < MAP_SIZE; j++) {
                if (i > 5 && i < 9 && j > 5 && j < 9) {
                } else {
                    DrawRectangleRec(map_posn[i][j], map_col[i][j]);
                }
              }
          }

          // Colored big boxes
          DrawRectangle(BLOCK_SIZE, TOP_BOARD_PADDING+BLOCK_SIZE, 6*BLOCK_SIZE-PADDING, 6*BLOCK_SIZE-PADDING, _GREEN);
          DrawRectangle(10*BLOCK_SIZE, TOP_BOARD_PADDING+BLOCK_SIZE, 6*BLOCK_SIZE-PADDING, 6*BLOCK_SIZE-PADDING, _YELLOW);
          DrawRectangle(BLOCK_SIZE, TOP_BOARD_PADDING+10*BLOCK_SIZE, 6*BLOCK_SIZE-PADDING, 6*BLOCK_SIZE-PADDING, _RED);
          DrawRectangle(10*BLOCK_SIZE, TOP_BOARD_PADDING+10*BLOCK_SIZE, 6*BLOCK_SIZE-PADDING, 6*BLOCK_SIZE-PADDING, _BLUE);

          // Extra two lines for border
          DrawLine(BLOCK_SIZE, BLOCK_SIZE+TOP_BOARD_PADDING, 16*BLOCK_SIZE, BLOCK_SIZE+TOP_BOARD_PADDING-1, BLACK);
          DrawLine(BLOCK_SIZE, BLOCK_SIZE+TOP_BOARD_PADDING-1, BLOCK_SIZE-1, 16*BLOCK_SIZE+TOP_BOARD_PADDING, BLACK);

          // Token White boxes
          DrawRectangle(2*BLOCK_SIZE, 2*BLOCK_SIZE+TOP_BOARD_PADDING, 4*BLOCK_SIZE-PADDING, 4*BLOCK_SIZE-PADDING, WHITE);
          DrawRectangle(11*BLOCK_SIZE, 2*BLOCK_SIZE+TOP_BOARD_PADDING, 4*BLOCK_SIZE-PADDING, 4*BLOCK_SIZE-PADDING, WHITE);
          DrawRectangle(2*BLOCK_SIZE, 11*BLOCK_SIZE+TOP_BOARD_PADDING, 4*BLOCK_SIZE-PADDING, 4*BLOCK_SIZE-PADDING, WHITE);
          DrawRectangle(11*BLOCK_SIZE, 11*BLOCK_SIZE+TOP_BOARD_PADDING, 4*BLOCK_SIZE-PADDING, 4*BLOCK_SIZE-PADDING, WHITE);

          // Green Token Init place
          DrawCircleV((Vector2){3*BLOCK_SIZE, 3*BLOCK_SIZE+TOP_BOARD_PADDING}, BLOCK_SIZE/2, _GREEN);
          DrawCircleV((Vector2){3*BLOCK_SIZE, 5*BLOCK_SIZE+TOP_BOARD_PADDING}, BLOCK_SIZE/2, _GREEN);
          DrawCircleV((Vector2){5*BLOCK_SIZE, 3*BLOCK_SIZE+TOP_BOARD_PADDING}, BLOCK_SIZE/2, _GREEN);
          DrawCircleV((Vector2){5*BLOCK_SIZE, 5*BLOCK_SIZE+TOP_BOARD_PADDING}, BLOCK_SIZE/2, _GREEN);

          // Yellow Token Init place
          DrawCircleV((Vector2){12*BLOCK_SIZE, 3*BLOCK_SIZE+TOP_BOARD_PADDING}, BLOCK_SIZE/2, _YELLOW);
          DrawCircleV((Vector2){12*BLOCK_SIZE, 5*BLOCK_SIZE+TOP_BOARD_PADDING}, BLOCK_SIZE/2, _YELLOW);
          DrawCircleV((Vector2){14*BLOCK_SIZE, 3*BLOCK_SIZE+TOP_BOARD_PADDING}, BLOCK_SIZE/2, _YELLOW);
          DrawCircleV((Vector2){14*BLOCK_SIZE, 5*BLOCK_SIZE+TOP_BOARD_PADDING}, BLOCK_SIZE/2, _YELLOW);

          // Red Token Init place
          DrawCircleV((Vector2){3*BLOCK_SIZE, 12*BLOCK_SIZE+TOP_BOARD_PADDING}, BLOCK_SIZE/2, _RED);
          DrawCircleV((Vector2){3*BLOCK_SIZE, 14*BLOCK_SIZE+TOP_BOARD_PADDING}, BLOCK_SIZE/2, _RED);
          DrawCircleV((Vector2){5*BLOCK_SIZE, 12*BLOCK_SIZE+TOP_BOARD_PADDING}, BLOCK_SIZE/2, _RED);
          DrawCircleV((Vector2){5*BLOCK_SIZE, 14*BLOCK_SIZE+TOP_BOARD_PADDING}, BLOCK_SIZE/2, _RED);

          // Blue Token Init place
          DrawCircleV((Vector2){12*BLOCK_SIZE, 12*BLOCK_SIZE+TOP_BOARD_PADDING}, BLOCK_SIZE/2, _BLUE);
          DrawCircleV((Vector2){12*BLOCK_SIZE, 14*BLOCK_SIZE+TOP_BOARD_PADDING}, BLOCK_SIZE/2, _BLUE);
          DrawCircleV((Vector2){14*BLOCK_SIZE, 12*BLOCK_SIZE+TOP_BOARD_PADDING}, BLOCK_SIZE/2, _BLUE);
          DrawCircleV((Vector2){14*BLOCK_SIZE, 14*BLOCK_SIZE+TOP_BOARD_PADDING}, BLOCK_SIZE/2, _BLUE);

          DrawTriangle(
              (Vector2){7*BLOCK_SIZE, 7*BLOCK_SIZE+TOP_BOARD_PADDING},
              (Vector2){7*BLOCK_SIZE, 10*BLOCK_SIZE+TOP_BOARD_PADDING-PADDING},
              (Vector2){8.5f*BLOCK_SIZE-1, 8.5f*BLOCK_SIZE+TOP_BOARD_PADDING},
              _GREEN
          );

          DrawTriangle(
              (Vector2){8.5f*BLOCK_SIZE-1, 8.5f*BLOCK_SIZE+TOP_BOARD_PADDING},
              (Vector2){10*BLOCK_SIZE-PADDING, 10*BLOCK_SIZE+TOP_BOARD_PADDING},
              (Vector2){10*BLOCK_SIZE-PADDING, 7*BLOCK_SIZE+TOP_BOARD_PADDING},
              _BLUE
          );

          DrawTriangle(
              (Vector2){8.5f*BLOCK_SIZE, 8.5f*BLOCK_SIZE+TOP_BOARD_PADDING},
              (Vector2){7*BLOCK_SIZE, 10*BLOCK_SIZE+TOP_BOARD_PADDING-PADDING},
              (Vector2){10*BLOCK_SIZE-1, 10*BLOCK_SIZE+TOP_BOARD_PADDING-PADDING},
              _RED
          );

          DrawTriangle(
              (Vector2){7*BLOCK_SIZE, 7*BLOCK_SIZE+TOP_BOARD_PADDING},
              (Vector2){8.5f*BLOCK_SIZE-1, 8.5f*BLOCK_SIZE+TOP_BOARD_PADDING},
              (Vector2){10*BLOCK_SIZE-PADDING, 7*BLOCK_SIZE+TOP_BOARD_PADDING},
              _YELLOW
          );


      EndDrawing();

    }

    CloseWindow();

    return 0;

}
