float textX1=50;
float textY1=50;
int score=0;
void score()
{
  String text=str(score);
  text("SCORE", textX1, textY1-30);
  text(text, textX1, textY1);
}