(: insert-start :)
declare variable $input-context external;
(: insert-end :)


for $book in $input-context/books/book
let $cont := $book//content[. ftcontains 
   "expert review methods" occurs at least 2 times]
where count($cont)&gt;0
return $book