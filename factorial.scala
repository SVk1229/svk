

object factorial {
  
  def main(args: Array[String]): Unit = {
    /*def : key word for function
     * def main(args: Array[String]): this is main method as like as public static void main in java
     * Unit = Same like void in Java, which doesnt return any value.
     */
    
  
  def myFact(x : Int) : Int = {
    
    /*def = Key word of function
     * myFact = Is a function name
     * (x : Int) = Parameters
     *  : Int = is return type of the recursive function. we should give return type otherwise we will get error. 
     * = { .....} = Block of code, In scala every block of code is Expression.
     */
    
    if(x <= 1) 1
    else x * myFact(x -1)
  }
  val x = myFact(6)  // Val is immutable variable we cant change the value of val
  println(x)
}
}