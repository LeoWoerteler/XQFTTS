(: insert-start :)
declare variable $input-context external;
(: insert-end :)


for $book in $input-context/books/book
let $cont := $book//content[. ftcontains 
   "usability testing once the problems"]
where count($cont)>0
return $book
