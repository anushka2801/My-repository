#include <iostream>
#include <graphics.h>

void drawCircle(int x0, int y0, int radius) {
    int x = radius;
    int y = 0;
    int err = 0;

    while (x >= y) {
        putpixel(x0 + x, y0 + y, WHITE);
        putpixel(x0 + y, y0 + x, WHITE);
        putpixel(x0 - y, y0 + x, WHITE);
        putpixel(x0 - x, y0 + y, WHITE);
        putpixel(x0 - x, y0 - y, WHITE);
        putpixel(x0 - y, y0 - x, WHITE);
        putpixel(x0 + y, y0 - x, WHITE);
        putpixel(x0 + x, y0 - y, WHITE);

        if (err <= 0) {
            y += 1;
            err += 2 * y + 1;
        }

        if (err > 0) {
            x -= 1;
            err -= 2 * x + 1;
        }
    }
}

int main() {
    int gd = DETECT, gm;
    initgraph(&gd, &gm, "");

    int x0 = 200, y0 = 200, radius = 100;
    drawCircle(x0, y0, radius);

    getch();
    closegraph();
    return 0;
}

