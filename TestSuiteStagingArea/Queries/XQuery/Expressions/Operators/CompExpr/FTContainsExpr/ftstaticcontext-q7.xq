(: insert-start :)
declare ft-option case sensitive;
declare variable $input-context external;
declare variable $x := 1;
(: insert-end :)

for $book in $input-context/books/book
let $cont := $book[$x]/content
where $cont ftcontains "Testing"
return $book 
