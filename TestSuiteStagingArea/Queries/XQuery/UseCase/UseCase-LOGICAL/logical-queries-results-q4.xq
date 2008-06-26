(: insert-start :)
declare variable $input-context external;
(: nsert-end :)


for $book in $input-context/books/book 
let $not := $book[. ftcontains ftnot "us.* testing"
   with wildcards]
where count($not) > 0
return $book





