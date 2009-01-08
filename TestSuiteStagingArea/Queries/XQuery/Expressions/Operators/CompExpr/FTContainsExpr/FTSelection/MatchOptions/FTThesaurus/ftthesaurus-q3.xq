(: insert-start :)
declare variable $input-context external;
(: insert-end :)

for $book in $input-context/books/book
let $cont := $book//content
where $cont ftcontains "program" with thesuarus at "http://bstore1.example.com/UsabilityThesaurus.xml" relationship "UF"
return $book