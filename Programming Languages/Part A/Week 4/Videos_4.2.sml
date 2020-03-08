fun map(f,xs) =
    case xs of
	[] => []
     | x::xs' => (f x)::map(f,xs')

val x1 = map((fn x => x + 1), [4,8,12,16])
val x2 = map(hd, [[1,2],[3,4],[5,6,7]]

fun filter(f,xs) =
    case xs of
	 [] => []
       | x::xs' => if f x
		   then x::(filter (f, xs'))
		   else filter(f,xs')
			      
fun is_even v =
    (v mod 2 = 0)

fun all_even xs = (filter(is_even, xs)

fun all_even_snd xs = filter((fn (_,v) => is_even v), xs)

fun double_or_triple f =
    if f 7
    then fn x => 2*x
    else fn => 3*x
		     
val double = double_or_triple (fn x => x - 3 = 4)
val nine = (double_or_triple (fn x => x = 42)) 3