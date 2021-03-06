class ActionChooserSad extends ActionChooser
{
  public ActionChooserSad()
  {
    firstAction = "sad_int.txt";
    sessionName = "Sad";
  }
  
  public String choose(SkeletonData data, Action currentAction)
  {
    if (data == null)
      return null;
      
    PVector[] vecs = data.vectors;
    for (int i = 0; i < 17; i++)
    {
      if (vecs[i] == null)
        return null;
    }
    
    
    // put your hand on his head 
    int counthead = 0;
    // left hand or right hand in an area
    if (
        (180 < vecs[15].x && vecs[15].x < 270) && (120 < vecs[15].y && vecs[15].y < 160)
        ||
        (180 < vecs[16].x && vecs[16].x < 270) && (120 < vecs[16].y && vecs[16].y < 160)
       )
       {
        println("touch his head");
        if(counthead == 0)
          counthead = 1;
       }
    else 
      counthead = 0;
    
    // making decision
    if (counthead == 1)
      return "sad_hug.txt";
    else
      return null;
  
  } // end of String chooose
}
