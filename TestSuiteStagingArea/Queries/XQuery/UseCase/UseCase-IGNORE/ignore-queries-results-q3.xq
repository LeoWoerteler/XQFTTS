(: insert-start :)
declare variable $input-context external;
(: insert-end :)


for $book in $input-context/books/book
let $chap := $book//chapter[
   . ftcontains  "at any computer workstation
   or in a lab" without content .//footnote[. ftcontains 
   "workstation." using wildcards]
return ($book/metadata/title, $chap)