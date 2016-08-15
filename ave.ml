(*目的:5科目の得点を与えられたら、合計点と平均点を組にして返す*)
(*goukei_to_heikin : float -> (float,float) *)

let goukei_to_heikin j m s so e = (j+.m+.s+.so+.e,(j+.m+.s+.so+.e)/.5.0) ;;

(*テスト*)

let test1 = goukei_to_heikin 32.0 84.0 51.0 78.0 19.0 = (264.0,52.8)
let test2 = goukei_to_heikin 24.6 74.1 59.8 43.0 98.1 = (299.6,59.92)
let test3 = goukei_to_heikin 17.2 54.0 32.0 0.0 100.0 = (203.2,40.64)
  
