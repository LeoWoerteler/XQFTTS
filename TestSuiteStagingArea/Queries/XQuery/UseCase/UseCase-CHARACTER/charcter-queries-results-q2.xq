(: insert-start :)
declare variable $input-context external;
(: nsert-end :)


for $book in $input-context/books/book
let $cont := $book//content[. ftcontains "resume." 
   with wildcards diacritics insensitive]
where count($cont) >0   
return $book




