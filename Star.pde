class Star
{
  int hab;
  String DisplayName;
  float distance;
  float Xg;
  float Yg;
  float Zg;
  float AbsMag;
  
  Star(TableRow row)
  {
    hab = row.getInt("Hab?");
    DisplayName = row.getString("Display Name");
    distance = row.getFloat("Distance");
    Xg = row.getFloat("Xg");
    Yg = row.getFloat("Yg");
    Zg = row.getFloat("Zg");
    AbsMag = row.getFloat("AbsMag");
  }
  
  Star(int hab, String DisplayName, float distance, float Xg, float Yg, float Zg, float AbsMag)
  {
    this.hab = hab;
    this.DisplayName = DisplayName;
    this.distance = distance;
    this.Xg = Xg;
    this.Yg = Yg;
    this.Zg = Zg;
    this.AbsMag = AbsMag;
  }
  
  boolean inRange()
  {
    float x = map(Xg, -5, 5, 50, width - 50);
    float y = map(Yg, -5, 5, 50, height - 50);
    float radius = AbsMag/2;
    if((mouseX > x - radius) && (mouseX < x + radius) && (mouseY > y - radius) && (mouseY < y + radius))
    {
      return true;
    }
    return false;
  }
  
  String toString()
  {
    return hab + "\t" + DisplayName + "\t" + distance + "\t" + Xg + "\t" + Yg + "\t" + Zg + "\t" + AbsMag;
  }
}