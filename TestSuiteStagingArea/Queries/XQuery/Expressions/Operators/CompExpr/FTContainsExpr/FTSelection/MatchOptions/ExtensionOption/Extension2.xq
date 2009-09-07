(: Extension2: Undefined namespace should be error :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

$input-context//metadata/title ftcontains "Usability"
  using option unknown:option "bad"

