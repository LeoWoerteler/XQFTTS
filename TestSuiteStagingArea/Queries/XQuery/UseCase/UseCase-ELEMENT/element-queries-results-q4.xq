(: insert-start :)
declare variable $input-context external;
(: insert-end :)

for $book in $input-context/books/book
let $title := $book/metadata/title[. ftcontains "usability tests"] 
   union $book/content/part/chapter/title[. ftcontains "usability 
   tests"] 
where count($title) > 0
return $book
