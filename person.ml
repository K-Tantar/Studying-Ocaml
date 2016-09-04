(*人間一人分のデータ定義*)
type person_t = {name : string; sintyo : float; taijyu : float; tuki_bi : int; hi_bi : int; ketueki : string};;


(*person_t型のデータを受け取ったら、名前と血液型を返す。*)
(*ketsueki : person_t -> string *)

let ketsueki person = match person with
  {name = a; sintyo = b; taijyu = c; tuki_bi = d; hi_bi = e; ketueki = f} -> a ^ "さんの血液型は" ^ f ^"型です";;

(*テスト*)
  let test1 = ketsueki {name = "京井亮太"; sintyo = 173.4; taijyu = 46.2; tuki_bi = 7; hi_bi = 8; ketueki = "O"} = "京井亮太さんの血液型はO型です";;
  let test2 = ketsueki {name = "京井正之"; sintyo = 171.0; taijyu = 79.8; tuki_bi = 6; hi_bi = 11; ketueki = "B"} = "京井正之さんの血液型はB型です";; 
  let test3 = ketsueki {name = "Joh"; sintyo = 167.4; taijyu = 51.7; tuki_bi =1 ; hi_bi = 24; ketueki = "AB"} = "Johさんの血液型はAB型です";;
(*テスト2*)
  {name = "京井亮太"; sintyo = 173.4; taijyu = 46.2; tuki_bi = 7; hi_bi = 8; ketueki = "O"}::{name = "京井正之"; sintyo = 171.0; taijyu = 79.8; tuki_bi = 6; hi_bi = 11; ketueki = "B"}::{name = "Joh"; sintyo = 167.4; taijyu = 51.7; tuki_bi =1 ; hi_bi = 24; ketueki = "AB"}::[];;
