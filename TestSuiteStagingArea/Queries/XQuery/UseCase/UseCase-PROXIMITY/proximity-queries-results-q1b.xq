(: insert-start :)
declare variable $input-context external;
(: insert-end :)


$input-context/books/book[content ftcontains "software" 
ftand "developer" using stemming distance at most 3 words]