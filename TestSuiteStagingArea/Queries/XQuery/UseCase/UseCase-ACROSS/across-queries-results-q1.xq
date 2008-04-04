(: insert-start :)
define variable $input-context external
(: insert-end :)


for $book in $input-context/books/book
let $chap := $book//chapter[. ftcontains 
   "one of the best known lists of heuristics is 
   Ten Usability Heuristics"]
where count($chap) > 0
return $book
