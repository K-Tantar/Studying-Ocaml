(*目的:身長と体重を与えられたら、BMI指数を返す*)
(* bmi : float -> float *)

let bmi m kg = kg /. m ** 2.0

(*目的:身長と体重を与えられたら、BMIを計算し体型を返す*)
(* taikei : float -> string *)

let taikei kg m = if bmi m kg < 18.5 then "やせ"
  else if bmi m kg < 25.0 then "標準"
  else if bmi m kg < 30.0 then "肥満"
  else "高度肥満";;

(*テスト*)
let test1 = taikei 46.0 1.7 = "やせ"
let test2 = taikei 62.4 1.6 = "標準"
let test3 = taikei 120.0 1.5 ="高度肥満"
let test4 = taikei 25.0 1.0 = "肥満"
  
