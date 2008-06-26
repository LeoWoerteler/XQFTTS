(: insert-start :)
declare variable $input-context external;
(: nsert-end :)


for $book in $input-context/books/book
let $cont := $book//content[. ftcontains 
   "planning then conducting" with stop words 
   at "http://bstore1.example.com/StopWordList.xml"]
where count($cont)>0
return $book




