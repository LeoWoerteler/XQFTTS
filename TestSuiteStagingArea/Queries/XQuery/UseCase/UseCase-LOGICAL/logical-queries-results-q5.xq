(: insert-start :)
declare variable $input-context external;
(: nsert-end :)


for $book in $input-context/books/book 
let $up := $book[./metadata ftcontains "usability" 
   ftand ftnot "plan"]
where count($up) > 0
return $book





