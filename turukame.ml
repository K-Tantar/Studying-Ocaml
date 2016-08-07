(* 目的: 鶴の数tsuruを与えられたら、足の本数を返す。*)
(* tsuru_no_ashi : int -> int *)
let tsuru_no_ashi tsuru = tsuru * 2 ;;

(* テスト *)
let test1 = tsuru_no_ashi 4 = 8 ;;
let test2 = tsuru_no_ashi 7 = 14 ;;
let test3 = tsuru_no_ashi 11 = 22 ;;

(* 目的: 亀の数kameを与えられたら、足の本数を返す。 *)
(*kame_no_ashi : int -> int *)
let kame_no_ashi kame = kame * 4 ;;

(* テスト *)
let test4 = kame_no_ashi 3 = 12 ;;
let test5 = kame_no_ashi 5 = 20 ;;
let test5 = kame_no_ashi 37 = 148 ;;

(* 目的: 鶴の数tsuruと亀の数kameを与えられたら、足の数の合計を返す。*)
(* tsurukame_no_ashi : int -> int *)
let tsurukame_no_ashi tsuru kame = tsuru_no_ashi tsuru + kame_no_ashi kame ;;

(* テスト *)
let test7 = tsurukame_no_ashi 4 3 = 20 ;;
let test8 = tsurukame_no_ashi 2 7 = 32 ;;
let test9 = tsurukame_no_ashi 74 38 = 300;;

(* 目的: 鶴と亀の数の合計と足の数の合計を与えられたら、鶴の数を返す。*)
(* tsurukame kazu ashi : int -> int *)
let tsurukame kazu ashi = ( 4 * kazu - ashi ) / 2 ;;

(* テスト *)
let test10 = tsurukame 5 12 = 4 ;;
let test11 = tsurukame 7 22 = 3 ;;
let test12 = tsurukame 13 32 = 10 ;;
