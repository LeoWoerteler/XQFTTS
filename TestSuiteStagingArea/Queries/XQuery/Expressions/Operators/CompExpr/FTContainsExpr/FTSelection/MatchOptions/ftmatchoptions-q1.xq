(: insert-start :)
declare variable $input-context external;
(: insert-end :)

for $book in $input-context/books/book
let $cont := $book//content
where $cont ftcontains "resume" with stemming with stop words at "http://bstore1.example.com/StopWordList.xml" diacritics sensitive case sensitive language "de" with thesaurus at "http://bstore1.example.com/UsabilityThesaurus.xml"
return $book