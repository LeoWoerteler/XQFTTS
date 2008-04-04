(: insert-start :)
define variable $input-context external
(: insert-end :)

for $book in $input-context/books/book
let $cont := $book/content[. ftcontains "tests"]
where count($cont)>0
return $book
