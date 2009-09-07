(: insert-start :)
declare variable $input-context external;
(: insert-end :)

$input-context/books/book[. ftcontains "Merrygould" using thesaurus at
"http://bstore1.example.com/UsabilitySoundex.xml" relationship
"sounds like"]