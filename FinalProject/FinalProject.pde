#include <MeggyJrSimple.h>    // Required code, line 1 of 2.

struct Point
{
  int x;
  int y;
};

Point piece = {3,7};

int player = 1;

void setup()                    // run once, when the sketch starts
{
  MeggyJrSimpleSetup();      // Required code, line 2 of 2.
}

void loop()                     // run over and over again
{
  if (player == 1)
  {
    DrawPx(piece.x, piece.y,Red);
  }
  if (player == 2)
  {
    DrawPx(piece.x, piece.y,Blue);
  }
  DisplaySlate();
  
  CheckButtonsPress();
  if (Button_Left)
  {
    piece.x--;
  }
  if (Button_Right)
  {
    piece.x++;
  }
  if (piece.x>7)
  {
    piece.x = 7;
  }
  if (piece.x<0)
  {
    piece.x = 0;
  }
  ClearSlate();
  DisplaySlate();
  
  CheckButtonsPress();
  if (Button_A)
{  
}
}

