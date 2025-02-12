#include "raylib.h"

int main()
{
    // Window Dimensions
    const int windowDimensions[2]{384, 384};

    // initialise window
    InitWindow(windowDimensions[0], windowDimensions[1], "Classy Clash");

    Texture2D map = LoadTexture("nature_tileset/OpenWorldMap24x24.png");

    SetTargetFPS(60);
    while (!WindowShouldClose())
    {
        // delta time - time since last frame
        const float dT{ GetFrameTime() };

        // start drawing
        BeginDrawing();
        ClearBackground(RAYWHITE);

        // draw the background
        Vector2 mapPos{ 0.0, 0.0 };
        DrawTextureEx(map, mapPos, 0.0, 4.0, WHITE);

        // End main game loop
        EndDrawing();
    }

    UnloadTexture(map);
    CloseWindow();
}