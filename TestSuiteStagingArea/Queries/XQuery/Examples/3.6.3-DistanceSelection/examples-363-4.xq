(: insert-start :)
declare variable $input-context external;
(: insert-end :)

$input-context/books/book[. ftcontains "web"
ftand "users" distance at most 1 words]/title 
