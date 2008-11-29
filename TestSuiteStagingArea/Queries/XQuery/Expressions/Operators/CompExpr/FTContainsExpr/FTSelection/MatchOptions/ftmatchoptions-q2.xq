(: insert-start :)
declare variable $input-context external;
(: insert-end :)

for $book in $input-context/books/book
let $cont := $book//content
where $cont ftcontains ("Plan" ftand "Conduct" distance 5 words) with stemming diacritics insensitive case insensitive with thesaurus at "http://bstore1.example.com/UsabilityThesaurus.xml"
return $book