(: insert-start :)
declare variable $input-context external;
(: insert-end :)

for $book in $input-context/books/book
let $cont := $book//content
where $cont ftcontains "infrastructure" with thesuarus at "http://bstore1.example.com/TechnicalThesaurus.xml" relationship "NT" exactly 2 levels
return $book