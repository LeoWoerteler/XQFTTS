(: insert-start :)
declare variable $input-context external;
(: insert-end :)


for $book in $input-context/books/book 
let $cont := $book/content
where $cont ftcontains "goal" ftand "obstacles" 
   ftand "task" ordered
return $book





