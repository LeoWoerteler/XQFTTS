(: insert-start :)
declare variable $input-context external;
(: nsert-end :)


for $book in $input-context/books/book 
let $cont := $book//content[. ftcontains 
   "goal" ftand "obstacles" ftand "task" ordered]
where count($cont)>0
return $book





