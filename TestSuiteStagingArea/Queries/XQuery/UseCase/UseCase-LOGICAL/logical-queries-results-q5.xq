(: insert-start :)
declare variable $input-context external;
(: insert-end :)


for $book in $input-context/books/book 
let $up := $book/metadata
where $up ftcontains "usability" ftand ftnot "plan"
return $book





