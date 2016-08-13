(* 目的:誕生日(月と日)を受け取ったら、星座を返す関数*)
(* seiza m d : int,int-> sting*)
let seiza m d = if (m = 3 && d >= 21) || (m = 4 && d <= 19)
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
    
(*テスト*)
let test1 = seiza 3 24 = "おひつじ座"
let test2 = seiza 4 16 = "おひつじ座"
let test3 = seiza 4 20 = "おうし座"
let test4 = seiza 5 6 = "おうし座"
let test5 = seiza 5 24 = "ふたご座"
let test6 = seiza 6 21 = "ふたご座"
let test7 = seiza 6 29 = "かに座"
let test8 = seiza 7 22 = "かに座"
let test9 = seiza 7 30 = "しし座"
let test10 = seiza 8 22 = "しし座"
let test11 = seiza 8 27 = "おとめ座"
let test12 = seiza 9 21 = "おとめ座"
let test13 = seiza 9 23 = "てんびん座"
let test14 = seiza 10 18 = "てんびん座"
let test15 = seiza 10 24 = "さそり座"
let test16 = seiza 11 6 = "さそり座"
let test17 = seiza 11 26 = "いて座"
let test18 = seiza 12 17= "いて座"
let test19 = seiza 12 22 = "やぎ座"
let test20 = seiza 1 8 = "やぎ座"
let test21 = seiza 1 25 = "みずがめ座"
let test22 = seiza 2 18 = "みずがめ座"
let test23 = seiza 2 24 = "うお座"
let test24 = seiza 3 14 = "うお座"
  

 
