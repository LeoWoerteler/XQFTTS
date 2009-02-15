(: insert-start :)
declare variable $input-context external;
declare ft-option case sensitive;
declare default function namespace "http://example.org/functions";
declare variable $x := 1;
(: insert-end :)

for $book in $input-context/books/book
let $cont := $book[$x]/content
where $cont ftcontains "Testing"
return $book 