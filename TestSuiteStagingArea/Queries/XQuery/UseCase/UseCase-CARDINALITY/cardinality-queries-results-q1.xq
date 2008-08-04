(: insert-start :)
declare variable $input-context external;
(: insert-end :)


for $book in $input-context/books/book
let $subj := $book/metadata/subjects/subject[. ftcontains 
   "web site" ftand "usability"]
where count($subj)&gt;0
return $book