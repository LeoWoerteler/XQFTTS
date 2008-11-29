(: insert-start :)
declare variable $input-context external;
(: insert-end :)


for $book in $input-context/books/book
let $para := $book/content//p
where $para ftcontains (("task" ftand "performance" 
   distance at most 3 words) ftand 
   "expert review") with stemming
return ($book/metadata/title, $book/content)