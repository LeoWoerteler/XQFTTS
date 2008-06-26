(: insert-start :)
declare variable $input-context external;
(: insert-end :)


for $book in $input-context/books/book
let $cont := $book//content[. ftcontains "serv.*e" 
   with wildcards]
where count($cont)>0
return ($book/@number, $book/metadata/title/text(), $cont)