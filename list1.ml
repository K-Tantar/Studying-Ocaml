(*目的:整数のリストを受け取ったら、そのリストの長さを返す*)
(*length : int list -> int *)

let rec length lists = match lists with
  [] -> 0
  | first :: rest -> 1 + length rest ;; (*sum rest*)

(*テスト*)
let test1 = length [] = 0 ;;
let test2 = length [7;2] = 2;;
let test3 = length [7;4;1;5;9;12;-5] = 7 ;;

(*整数のリストを受け取ったら、その中の偶数の要素のみを含むリストを返す*)
(* even : int list -> int list *)

let rec even lists = match lists with
    [] -> []
  | first::rest -> if first mod 2 = 0 then first :: even rest else even rest (*even rest*);;

(*テスト*)

let test4 = even [] = [] ;;
let test5 = even [7;2] = [2];;
let test6 = even [7;4;-8;5;9;12;-5] = [4;-8;12] ;;

(*目的:文字列のリストを受け取ったら、その中の要素を前から順に全部くっつけた文字列を返す*)
(* concat : string list -> list *)

let concat list = match list with
    [] -> ""
  | first::rest -> first ^ concat rest (*concat rest*) ;;
(*テスト*)
let test7 = concat [] = "";;
let test8 = concat ["春";"夏";"秋";"冬"] = "春夏秋冬";;
let test9 = concat ["a";"b";"c"] = "abc" ;;
