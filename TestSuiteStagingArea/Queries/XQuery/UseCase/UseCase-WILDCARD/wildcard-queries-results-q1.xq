(: insert-start :)
declare variable $input-context external;
(: insert-end :)


for $book in $input-context/books/book
let $cont := $book/content[. ftcontains "test." 
  with wildcards]
where count($cont)>0
return $book