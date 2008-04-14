(: insert-start :)
declare variable $input-context external;
(: insert-end :)

$input-context/books/book/metadata/title[count(. ftcontains 
"improving" ftand "usability" ordered 
distance at most 2 words  at start)>0]
