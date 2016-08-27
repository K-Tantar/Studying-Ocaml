(*目的:xy座標の組を与えられたら、x軸について対象な点の座標を返す。*)
(*taisho_x : (float,float) -> (float,float)*)
let taisho_x point = match point with
  (x,y) -> (-.x,y) ;;
(*テスト*)
let test1 = taisho_x (2.0,3.0) = (-2.0,3.0) ;;
let test2 = taisho_x (-3.2,4.6) = (3.2,4.6) ;;
let test3 = taisho_x (0.0,-2.77) ;;

(*目的:xy座標の組を２つ受け取ったら、その2つの中点の座標を返す。*)
(*chuten : (float,float) (float,float) -> (float,float) *)

let chuten point1 point2 = match point1 with
    (x1,y1) -> match point2 with
      (x2,y2) -> ((x1+.x2)/.2.0 , (y1+.y2)/.2.0 ) ;;

(*テスト*)

let test4 = chuten (2.0,6.0) (3.0,0.0) = (2.5,3.0) ;;
let test5 = chuten (6.5,-1.3) (8.3,5.2) ;;
