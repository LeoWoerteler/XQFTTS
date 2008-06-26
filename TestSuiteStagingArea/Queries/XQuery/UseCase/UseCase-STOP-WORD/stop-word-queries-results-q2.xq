(: insert-start :)
declare variable $input-context external;
(: nsert-end :)


for $book in $input-context/books/book
let $cont := $book//content[. ftcontains 
   "planning then conducting" without stop words]
where count($cont)>0
return $book




