(: insert-start :)
declare variable $input-context external;
(: insert-end :)


for $book in $input-context/books/book
let $bi := $book/content/introduction[./p ftcontains 
   "identif.*" with wildcards]
let $pi := $book/content/part/introduction[./p ftcontains 
   "identif.*" with wildcards]
where count($bi)>0 and count($pi)>0
return $book

