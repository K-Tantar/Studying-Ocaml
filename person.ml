(*人間一人分のデータ定義*)
type person_t = {name : string; sintyo : float; taijyu : float; tuki_bi : int; hi_bi : int; ketsueki : string};;


(*person_t型のデータを受け取ったら、名前と血液型を返す。*)
(*ketsueki : person_t -> string *)

let ketsueki person = match person with
  {name = a; sintyo = b; taijyu = c; tuki_bi = d; hi_bi = e; ketsueki = f} -> a ^ "さんの血液型は" ^ f ^"型です";;

(*テスト*)
  let test1 = ketsueki {name = "京井亮太"; sintyo = 173.4; taijyu = 46.2; tuki_bi = 7; hi_bi = 8; ketsueki = "O"} = "京井亮太さんの血液型はO型です";;
  let test2 = ketsueki {name = "京井正之"; sintyo = 171.0; taijyu = 79.8; tuki_bi = 6; hi_bi = 11; ketsueki = "B"} = "京井正之さんの血液型はB型です";; 
  let test3 = ketsueki {name = "Joh"; sintyo = 167.4; taijyu = 51.7; tuki_bi =1 ; hi_bi = 24; ketsueki = "AB"} = "Johさんの血液型はAB型です";;
(*テスト2*)
  {name = "京井亮太"; sintyo = 173.4; taijyu = 46.2; tuki_bi = 7; hi_bi = 8; ketsueki = "O"}::{name = "京井正之"; sintyo = 171.0; taijyu = 79.8; tuki_bi = 6; hi_bi = 11; ketsueki = "B"}::{name = "Joh"; sintyo = 167.4; taijyu = 51.7; tuki_bi =1 ; hi_bi = 24; ketsueki = "AB"}::[];;

(*目的: person_t型のデータを受け取ったら、血液型がA型の人の数を返す*)
(*count_ketsueki_A : person_t list -> int *)

  let rec count_ketsueki_A person = match person with
      [] -> 0
    | {name = a; sintyo = b; taijyu = c; tuki_bi = d; hi_bi = e; ketsueki = f} :: rest ->
       (if f = "A" then 1 else 0) + count_ketsueki_A rest ;;(*count_ketsueki_A rest*)
	 

(*テスト*)
  let test4 = count_ketsueki_A [] = 0 ;;
  let test5 = count_ketsueki_A [{name = "京井亮太"; sintyo = 173.4; taijyu = 46.2; tuki_bi = 7; hi_bi = 8; ketsueki = "A"} ;{name = "京井正之"; sintyo = 171.0; taijyu = 79.8; tuki_bi = 6; hi_bi = 11; ketsueki = "A"} ;{name = "Joh"; sintyo = 167.4; taijyu = 51.7; tuki_bi =1 ; hi_bi = 24; ketsueki = "AB"} ;] = 2;;
  let test6 = count_ketsueki_A [{name = "alpha"; sintyo = 123.0; taijyu = 30.0; tuki_bi = 1; hi_bi = 1; ketsueki = "A"}] = 1 ;;

(* 目的:person_t型を受け取ったら、星座を返す関数*)
(* seiza m d : int,int-> sting*)
  let seiza m d =
  if (m = 3 && d >= 21) || (m = 4 && d <= 19)
  then "おひつじ座"
  else if ( m = 4 && d >= 20) || (m = 5 && d <= 20)
  then "おうし座"
  else if (m = 5 && d >= 21) || (m = 6 && d <= 21)
  then "ふたご座"
  else if (m = 6 && d >= 22) || (m = 7 && d <= 22)
  then "かに座"
  else if ( m = 7 && d >= 23) || (m = 8 && d <= 22)
  then "しし座"
  else if (m = 8 && d >= 23) || (m = 9 && d <= 22)
  then "おとめ座"
  else if (m = 9 && d >= 23) || (m = 10 && d <= 23)
  then "てんびん座"
  else if ( m = 10 && d >= 24) || (m = 11 && d <= 22)
  then "さそり座"
  else if (m = 11 && d >= 23) || (m = 12 && d <= 21)
  then "いて座"
  else if (m = 12 && d >= 22) || (m = 1 && d <= 19)
  then "やぎ座"
  else if (m = 1 && d >= 20) || (m = 2 && d <= 18)
  then "みずがめ座"
  else "うお座"

(*seizaのテスト*)
  

(*目的:person_t型のデータを受け取ったら、乙女座の人の名前のみからなるリストを返す*)
(*otomeza : person_t list -> string list *)
  
  let rec otomeza person = match person with
      [] -> []
    |{name = a; sintyo = b; taijyu = c; tuki_bi = m; hi_bi = d; ketsueki = f} :: rest ->
       (if seiza m d = "おとめ座" then a :: otomeza rest else otomeza rest ) (*otomeza rest*)
	;;
  
(*テスト*)
  let test7 = otomeza [] = [] ;;
  let test8 = otomeza [{name = "京井亮太"; sintyo = 173.4; taijyu = 46.2; tuki_bi = 8; hi_bi = 25; ketsueki = "A"} ;{name = "京井正之"; sintyo = 171.0; taijyu = 79.8; tuki_bi = 6; hi_bi = 11; ketsueki = "A"} ;{name = "Joh"; sintyo = 167.4; taijyu = 51.7; tuki_bi = 9 ; hi_bi = 5; ketsueki = "AB"}] = ["京井亮太";"Joh"] ;;
  let test9 = otomeza [{name = "alpha"; sintyo = 123.0; taijyu = 30.0; tuki_bi = 9; hi_bi = 1; ketsueki = "A"}] = ["alpha"] ;;

(*目的:insertのperson_t型Ver.*)
(*person_insert : person_t -> person_t list -> person_t list *)
  
let rec person_insert n lst = match n with
    ({name = na2; sintyo = si2; taijyu = ta2; tuki_bi = tu2; hi_bi = hi2; ketsueki = ke2}) as l -> match lst with
    [] -> l :: []
  | ({name = na; sintyo = si2; taijyu = ta2; tuki_bi = tu2; hi_bi = hi2; ketsueki = ke2}) as first :: rest -> if na2 < na then l :: first :: rest
    else first :: person_insert l rest ;;  (*person_insert n rest *)

  
(*目的:person_t型のリストを受け取ったら、それを名前の順に返したリストを返す。*)
(* person_sort : string list -> string list *)

  let rec person_sort lst = match lst with
      [] -> []
    | ({name = na; sintyo = si; taijyu = ta; tuki_bi = tu; hi_bi = hi; ketsueki = ke}) as first :: rest ->
       person_insert first (person_sort rest) ;;
	 
(*テスト*)
  let test10 = person_sort [] ;;
  let test11 = person_sort [{name = "Ryota"; sintyo = 173.4; taijyu = 46.2; tuki_bi = 8; hi_bi = 25; ketsueki = "A"} ;{name = "Masayuki"; sintyo = 171.0; taijyu = 79.8; tuki_bi = 6; hi_bi = 11; ketsueki = "A"} ;{name = "Joh"; sintyo = 167.4; taijyu = 51.7; tuki_bi = 9 ; hi_bi = 5; ketsueki = "AB"}] ;;
  let test12 = person_sort [{name = "Alpha"; sintyo = 123.0; taijyu = 30.0; tuki_bi = 9; hi_bi = 1; ketsueki = "A"}] ;;
