(*学生一人分のデータ*)
type gakusei_t = {namae : string; tensuu : int; seiseki : string; } ;;

(*昇順に並んでいる整数のリストと整数を受け取ったら昇順となる位置に整数を挿入したリストを返す*)
(*insert : int list -> int -> int list *)

let rec insert lst n = match lst with
    [] -> n :: []
  | first :: rest -> if first > n then n :: first ::rest
    else first :: insert rest n ;;  (*insert rest n*)

(*テスト*)
  let test1 = insert [] 2  ;;
  let test2 = insert [-4;1;3] 2 ;;
  let test3 = insert [1;2;3;4;5;6;7;8] 4 ;;

let rec insert_gakusei n lst  = match n with
    ({namae = na2; tensuu = te2; seiseki = se2}) as l -> match lst with
    [] -> l :: []
  | ({namae = na; tensuu = te; seiseki = se}) as first :: rest -> if te2 < te then l :: first :: rest
    else first :: insert_gakusei l rest ;;  (*insert rest n*)
  (*テスト*)
let test10 = insert_gakusei {namae = "京井亮太" ; tensuu = 60 ; seiseki = "B"} [{namae = "Joh"; tensuu = 30; seiseki = "D"};
   {namae = "Ace"; tensuu = 65; seiseki = "C"}]

  
(*整数のリストを受け取ったら、それを昇順に整列したリストを返す関数*)
(*ins_sort : int list -> int list *)

  let rec ins_sort lst = match lst with
      [] -> []
    | first :: rest -> insert (ins_sort rest) first ;;

(*テスト*)
  let test4 = ins_sort []  ;;
  let test5 = ins_sort [3;1;4;2] ;;
  let test6 = ins_sort [-6;4;1;-2;3;0] ;;


(*目的:gakusei_t型のデータを受け取ったら、それをtensuuフィールドの順に整列する。*)
(*gakusei_sort : list gakusei_t -> list gakusei_t *)

  let rec gakusei_sort lst = match lst with
      [] -> []
    | ({namae = na ; tensuu = te; seiseki = se}) as first :: rest ->
    insert_gakusei first (gakusei_sort rest) ;;

(*テスト*)
  let test7 = gakusei_sort [] ;;
  let test8 = gakusei_sort [{namae = "京井亮太"; tensuu = 95 ; seiseki = "A"} ; {namae = "京井正之" ; tensuu = 75 ; seiseki = "B"} ;
			    {namae = "Joh" ; tensuu = 30 ; seiseki = "D"} ; {namae = "DALUSY" ; tensuu = 10 ; seiseki = "CO"} ;
				{namae = "Ace" ; tensuu = 65 ; seiseki = "C"}];;
