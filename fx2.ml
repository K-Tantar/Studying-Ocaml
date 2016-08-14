(*目的:2次方程式ax^2+bx+c=0の係数(a,b,c)を与えられたら判別式の値を返す*)
(*hanbetsushiki : float -> float *)

let hanbetsushiki a b c = b ** 2.0 -. 4.0 *. a *. c 

(*テスト*)

let test1 = hanbetsushiki 2.0 5.0 (-4.0) = 57.0
let test2 = hanbetsushiki 2.0 4.0 2.0 = 0.0
let test3 = hanbetsushiki (-3.0) 1.5 (-3.6) = -40.95
let test4 = hanbetsushiki 1.26 3.68 5.22 = -12.7663999999999973 
  
(*目的:2次方程式の係数(a,b,c)を与えられたら解の個数を返す*)
(*kai_no_kosuu : float -> int *)

let kai_no_kosuu a b c = if hanbetsushiki a b c = 0.0 then 1 else 2 ;;

(*テスト*)

let test5 = kai_no_kosuu 3.0 5.2 (-3.0) = 2
let test6 = kai_no_kosuu 9.0 6.0 1.0 = 1
let test7 = kai_no_kosuu 3.2 (-6.8) 2.4 = 2
  
(*目的:2次方程式の係数を与えられたらその方程式に虚数解があるかどうか判定する*)
(*kyosuukai : float -> string*)

let kyosuukai a b c = if hanbetsushiki a b c < 0.0 then "あり" else "なし" ;;
  
(*テスト*)

let test8 = kyosuukai 2.0 0.9 1.2 = "あり"
let test9 = kyosuukai 3.0 5.8 (-1.2) = "なし"
let test10 = kyosuukai 9.0 6.0 1.0 = "なし"
  
