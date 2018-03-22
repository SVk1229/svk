

object String_functions {
  
  def main(args: Array[String]): Unit = {
   
    val x: String = "Hello, I am writing Scala code"
    
    val y = x.substring(7,12) // o/p : I am
    
    val z = x.charAt(4) // o/p : o
    
    var a = x.split(" ").foreach(println) // Hello, I, Am, writing, Scala, code
    
    val b = x.startsWith("H") // o:p : True
     
    val e = x.replaceAll(" ", " - ")
    
    val f = x.length //o/p :  30
    
    val g = x.toLowerCase

    val h = x.take(4) // Hell
    
     println(y, z , b, e, f, g, h)
  }
}