(: insert-start :)
declare variable $input-context external;
(: nsert-end :)


for $book in $input-context/books/book
let $cont := $book/content[. ftcontains 
   "letters" ftor "holiday cards" with thesaurus at 
   "http://bstore1.example.com/UsabilityThesaurus.xml" 
   relationship "BT" exactly 1 levels]
where count($cont)>0
return $book
