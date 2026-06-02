#include <iostream>
#include <cmath>
#include <ctime>
#include <GL/glut.h>
using namespace std;

int X = 320;
int Y = 240;
int radius = 150;

void line_draw(int x, int y)
{
    glBegin(GL_POINTS);
    glVertex2i(x, y);
    glEnd();
}

void circle_draw(int x, int y, int xc, int yc)
{
    glBegin(GL_POINTS);
    glVertex2i(x + xc, y + yc);
    glEnd();
}

void bresenham_line(int xf, int yf, int xs, int ys)
{
    int dx, dy, p, x, y, inc_x = 1, inc_y = 1;
    dx = xs - xf;
    dy = ys - yf;
    if (dx < 0)
        dx *= -1;
    if (dy < 0)
        dy *= -1;

    if (xs < xf)
        inc_x = -1;
    if (ys < yf)
        inc_y = -1;

    if (dx > dy)
    {
        p = 2 * dy - dx;
        x = xf;
        y = yf;
        line_draw(x, y);
        for (int i = 0; i < dx; i++)
        {
            if (p < 0)
            {
                p += 2 * dy;
                x += inc_x;
            }
            else
            {
                p += 2 * dy - 2 * dx;
                x += inc_x;
                y += inc_y;
            }
            line_draw(x, y);
        }
    }
    else
    {
        p = 2 * dx - dy;
        x = xf;
        y = yf;
        line_draw(x, y);
        for (int i = 0; i < dy; i++)
        {
            if (p < 0)
            {
                p += 2 * dx;
                y += inc_y;
            }
            else
            {
                p += 2 * dx - 2 * dy;
                x += inc_x;
                y += inc_y;
            }
            line_draw(x, y);
        }
    }
}

void mid_point_circle(int xc, int yc, int r)
{
    int x = 0;
    int y = r;

    float decision = 5.0f / 4.0f - (float)r;

    while (y >= x)
    {
        circle_draw(x, y, xc, yc);
        circle_draw(x, -y, xc, yc);
        circle_draw(-x, y, xc, yc);
        circle_draw(-x, -y, xc, yc);
        circle_draw(y, x, xc, yc);
        circle_draw(-y, x, xc, yc);
        circle_draw(y, -x, xc, yc);
        circle_draw(-y, -x, xc, yc);

        if (decision < 0)
        {
            x++;
            decision += 2.0f * x + 3.0f;
        }
        else
        {
            y--;
            x++;
            decision += 2.0f * (x - y) + 5.0f;
        }
    }
}

float degToRad(float deg)
{
    return (3.14159265f / 180.0f) * deg;
}

void draw_hand(int cx, int cy, float angleDeg, float length)
{
    float rad = degToRad(angleDeg);

    int x0 = cx;
    int y0 = cy;

    int x1 = cx + (int)(length * sin(rad));
    int y1 = cy + (int)(length * cos(rad));
    bresenham_line(x0, y0, x1, y1);
}

void draw_filled_circle(int cx, int cy, int r)
{
    glBegin(GL_TRIANGLE_FAN);
    glVertex2f((float)cx, (float)cy);
    for (int a = 0; a <= 360; a++)
    {
        float rad = degToRad((float)a);
        float x = cx + r * cos(rad);
        float y = cy + r * sin(rad);
        glVertex2f(x, y);
    }
    glEnd();
}

void draw_ticks()
{
    for (int i = 0; i < 60; i++)
    {
        float angle = (float)i * 6.0f;

        float rad = degToRad(angle);

        int xOuter = X + (int)((radius - 5) * sin(rad));
        int yOuter = Y + (int)((radius - 5) * cos(rad));

        int tickLen = (i % 5 == 0) ? 15 : 8;
        int xInner = X + (int)((radius - 5 - tickLen) * sin(rad));
        int yInner = Y + (int)((radius - 5 - tickLen) * cos(rad));

        glPointSize((i % 5 == 0) ? 3.0f : 2.0f);

        bresenham_line(xInner, yInner, xOuter, yOuter);

        if (i % 5 == 0)
        {
            int hour = (i / 5) == 0 ? 12 : (i / 5);
            char label[3] = {0};
            if (hour < 10)
            {
                label[0] = (char)('0' + hour);
                label[1] = '\0';
            }
            else
            {
                label[0] = (char)('0' + (hour / 10));
                label[1] = (char)('0' + (hour % 10));
                label[2] = '\0';
            }

            int xText = X + (int)((radius - 36) * sin(rad));
            int yText = Y + (int)((radius - 36) * cos(rad));
            int xOffset = (hour < 10) ? 6 : 10;
            glRasterPos2i(xText - xOffset, yText - 8);

            for (int j = 0; label[j] != '\0'; j++)
                glutBitmapCharacter(GLUT_BITMAP_HELVETICA_18, label[j]);
        }
    }
}

void get_time_angles(float &hourAngle, float &minuteAngle, float &secondAngle)
{
    std::time_t t = std::time(nullptr);
    std::tm *now = std::localtime(&t);

    int hr = now->tm_hour % 12;
    int mn = now->tm_min;
    int sc = now->tm_sec;

    secondAngle = sc * 6.0f;

    minuteAngle = mn * 6.0f + (sc / 60.0f) * 6.0f;

    hourAngle = hr * 30.0f + (mn / 60.0f) * 30.0f;
}

void draw_clock()
{
    glColor3f(0.98f, 0.98f, 0.98f); // minimal: very light face
    draw_filled_circle(X, Y, radius - 1);

    glColor3f(0.07f, 0.07f, 0.07f);
    glPointSize(2.5f);
    mid_point_circle(X, Y, radius);

    glColor3f(0.40f, 0.40f, 0.40f);
    draw_ticks();

    glColor3f(0.07f, 0.07f, 0.07f);
    glPointSize(3.0f);
    mid_point_circle(X, Y, 6);

    float hourAngle, minuteAngle, secondAngle;
    get_time_angles(hourAngle, minuteAngle, secondAngle);

    glColor3f(0.07f, 0.07f, 0.07f);
    glPointSize(4.0f);
    draw_hand(X, Y, hourAngle, radius * 0.50f);

    glColor3f(0.07f, 0.07f, 0.07f);
    glPointSize(3.0f);
    draw_hand(X, Y, minuteAngle, radius * 0.72f);

    glColor3f(0.85f, 0.12f, 0.12f);
    glPointSize(2.0f);
    draw_hand(X, Y, secondAngle, radius * 0.88f);

    glColor3f(0.85f, 0.12f, 0.12f);
    draw_filled_circle(X, Y, 4);
}

void timerFunc(int value)
{
    glutPostRedisplay();
    glutTimerFunc(33, timerFunc, 0);
}

void myInit(void)
{
    glClearColor(1.0, 1.0, 1.0, 1.0);
    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    gluOrtho2D(0.0, 640.0, 0.0, 480.0);
}

void myDisplay(void)
{
    glClear(GL_COLOR_BUFFER_BIT);
    draw_clock();

    glFlush();
}

int main(int argc, char **argv)
{
    glutInit(&argc, argv);
    glutInitDisplayMode(GLUT_SINGLE | GLUT_RGB);
    glutInitWindowSize(640, 480);
    glutInitWindowPosition(100, 150);
    glutCreateWindow("Analog Clock");

    myInit();
    glutDisplayFunc(myDisplay);
    glutTimerFunc(0, timerFunc, 0);

    glutMainLoop();
    return 0;
}
