(* 目的: 時間を受け取ったら午前か午後かを返す関数 *)
(* jikan time : int -> string *)
let jikan time = if time < 12 then "午前" else "午後" 

(*テスト*)

let test1 = jikan 10 = "午前" 
let test2 = jikan 16 = "午後" 
let test3 = jikan 12 = "午後" 
