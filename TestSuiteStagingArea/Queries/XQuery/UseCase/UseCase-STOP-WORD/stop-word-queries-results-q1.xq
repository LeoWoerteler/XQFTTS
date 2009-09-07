(: insert-start :)
declare variable $input-context external;
(: insert-end :)


for $book in $input-context/books/book
let $cont := $book/content
where $cont ftcontains "planning then conducting" 
   using stop words 
   at "http://bstore1.example.com/StopWordList.xml"
return $book



