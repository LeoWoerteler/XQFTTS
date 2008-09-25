(: insert-start :)
declare variable $input-context external;
(: insert-end :)


for $book in $input-context/books/book
let $cont := $book/content
where $cont ftcontains ("successfully" 
   ftand "completing" ftand "tasks"
   window (count(./part/chapter) * 3) 
   words) with stemming
return ($book/metadata/title, $cont)