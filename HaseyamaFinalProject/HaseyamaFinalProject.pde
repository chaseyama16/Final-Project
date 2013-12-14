#include <MeggyJrSimple.h>    // Required code, line 1 of 2.

struct Point
{
  int x;
  int y;
};

Point piece = {3,7};
int marker = 0;
int player = 1;

void setup()                    // run once, when the sketch starts
{
  MeggyJrSimpleSetup();      // Required code, line 2 of 2.
}

void loop()                     // run over and over again
{
  ClearSlate();
  if (player == 1)
  {
    player1();
  }
  if (player == 2)
  {
    player2();
  }
  DisplaySlate();
  //Insert CheckWinnerCode
}

void player1()
{
  DrawPx(piece.x, piece.y, Red);
  CheckButtonsPress();
  if (Button_Left)
  {
    piece.x--;
  }
  if (Button_Right)
  {
    piece.x++;
  }
  if (Button_A)
  {
   // DrawPx(piece.x,______________,Red);
    player = 2;
  }
  if (piece.x>7)
  {
    piece.x = 7;
  }
  if (piece.x<0)
  {
    piece.x = 0;
  }
}
 
void player2()
{
  DrawPx(piece.x, piece.y, Blue);
  CheckButtonsPress();
  if (Button_Left)
  {
    piece.x--;
  }
  if (Button_Right)
  {
    piece.x++;
  }
  if (Button_A)
  {
   // DrawPx(piece.x,_______, Blue);
    player = 1;
  }
  if (piece.x>7)
  {
    piece.x = 7;
  }
  if (piece.x<0)
  {
    piece.x = 0;
  }
}

