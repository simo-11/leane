def hello := "world"
#eval 42+19
#eval String.append "A" (String.append "B" "C")
#eval String.append (String.append "A" "B") "C"
#eval if 3 == 3 then 5 else 7
#eval if 3 == 4 then "equal" else "not equal"

#check (1 - 2 : Int)
#eval String.append (toString ["hello", " "]) "world"

def joinStringsWith (sep x y :String) : String :=
String.append (String.append x sep) y
#eval joinStringsWith ", " "one" "another"
#check (joinStringsWith)
#check joinStringsWith ":"

def volume_3 (w h d : Nat) : Nat := w * h * d
#eval volume_3  2 3 4

structure RectangularPrism where
width: Float
height: Float
depth : Float

def volume(p : RectangularPrism) : Float
:= p.width * p.height * p.depth
def p1 : RectangularPrism :=
 { width := 2.2 , height := 3.0, depth := 4.0 }
#eval volume p1
