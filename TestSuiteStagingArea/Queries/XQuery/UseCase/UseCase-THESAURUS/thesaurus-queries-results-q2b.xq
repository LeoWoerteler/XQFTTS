(: insert-start :)
declare variable $input-context external;
(: insert-end :)


$input-context/books/book[content contains text "web site components" 
using thesaurus at 
"http://bstore1.example.com/UsabilityThesaurus.xml" 
relationship "narrower term" at most 2 levels]