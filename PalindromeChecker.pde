public String reverse(String sWord){
  String e = new String("");
  for (int i = sWord.length(); i > 0; i--){
    e += sWord.substring(i-1, i);
  }
  return e;
}

public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  if (word.equals("")){
    return true;
  }
  String e = new String(word.substring(0, (int)(word.length()/2)));
  String x = new String(word.substring((int)(word.length()/2)+1));
  x = reverse(x);
  return e.equals(x);
}



