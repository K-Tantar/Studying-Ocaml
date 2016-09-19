(*学生一人分のデータ*)
type gakusei_t = {namae : string; tensuu : int; seiseki : string; } ;;

(*目的:gakusei_t型のtensuuを返す関す*)
(* gakusei_tensuu : gakusei_t -> int *)
let gakusei_tensuu re = match re with
    {namae = na; tensuu = te; seiseki = se} -> te ;;

(*目的:gakusei_t型のデータを受け取ったら、その中から最高得点をとった人のレコードを返す。*)
(* gakusei_max : gakusei_t list -> gakusei_t *)

let rec gakusei_max lst = match lst with
    [] -> {namae = ""; tensuu = min_int; seiseki = ""} 
  | ({namae = na; tensuu = te; seiseki = se}) as first :: rest ->
     if te > gakusei_tensuu(gakusei_max rest) then first
     else gakusei_max rest ;;


(*テスト*)
let test7 = gakusei_max [] ;;
let test8 = gakusei_max [{namae = "Ryota"; tensuu = 95 ; seiseki = "A"} ; {namae = "Masayuki" ; tensuu = 75 ; seiseki = "B"} ;
			    {namae = "Joh" ; tensuu = 30 ; seiseki = "D"} ; {namae = "DALUSY" ; tensuu = 10 ; seiseki = "CO"} ;
			    {namae = "Ace" ; tensuu = 65 ; seiseki = "C"}];;


