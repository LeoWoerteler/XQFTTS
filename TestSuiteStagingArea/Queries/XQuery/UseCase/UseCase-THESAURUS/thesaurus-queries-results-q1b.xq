(: insert-start :)
declare variable $input-context external;
(: insert-end :)


$input-context/books/book[.//introduction ftcontains "quote" 
using thesaurus at 
"http://bstore1.example.com/UsabilityThesaurus.xml" 
relationship "synonyms"]