(: insert-start :)
declare variable $input-context external;
(: insert-end :)

for $book in $input-context/books/book
let $intro := $book/content/part/introduction[. ftcontains 
   "prototypes"]
where count($intro)>0
return $book
