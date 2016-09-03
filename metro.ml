(*駅名のデータ定義*)

type ekimei_t = {kanji : string; kana : string; romaji : string; shozoku : string} ;;

(*テスト*)
{ kanji = "神保町"; kana = "じんぼうちょう"; romaji = "zinnboutyou"; shozoku = "半蔵門線"};;
{ kanji = "大手町"; kana = "おおてまち"; romaji = "ootemati"; shozoku = "丸ノ内線"};;
{ kanji = "新宿三丁目"; kana = "しんじゅくさんちょうめ"; romaji = "sinnzykusanntyume"; shozoku = "都営新宿線"};;

(*目的: ekimei_t型のデータを受け取ったら、路線名,駅名(かな)の型の文字列を返す。*)
(*hyoji : ekimei_t -> string *)

let hyoji ekimei = match ekimei with
  {kanji = a ; kana = b; romaji = c; shozoku = d} -> d ^ "," ^ a ^ "(" ^ b ^ ")" ;;

(*テスト*)
  let test1 = hyoji { kanji = "神保町"; kana = "じんぼうちょう"; romaji = "zinnboutyou"; shozoku = "半蔵門線"} = "半蔵門線,神保町(じんぼうちょう)";;
  let test2 = hyoji { kanji = "大手町"; kana = "おおてまち"; romaji = "ootemati"; shozoku = "丸ノ内線"} = "丸ノ内線,大手町(おおてまち)";;
  let test3 = hyoji { kanji = "新宿三丁目"; kana = "しんじゅくさんちょうめ"; romaji = "sinnzykusanntyume"; shozoku = "都営新宿線"}
  = "都営新宿線,新宿三丁目(しんじゅくさんちょうめ)";;
  
