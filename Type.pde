class Type
{
   color c;
   float[] attraction;
   float[] middle;
   float[] repelDist;
   int index;
   
   Type(color c, float[] attraction, float[] middle, float[] repelDist, ArrayList<Type> typeList)
   {
      this.c = c;
      this.attraction = attraction;
      this.middle = middle;
      this.repelDist = repelDist;
      this.index = typeList.size();
   }
}
