(: insert-start :)
declare variable $input-context external;
(: nsert-end :)


for $book in $input-context/books/book 
let $cont := $book//content[. ftcontains "web" 
   ftand "software"]
where count($cont)>0
return $book





