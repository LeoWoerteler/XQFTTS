(: insert-start :)
declare variable $input-context external;
(: insert-end :)

/books/book ftcontains ("completion" ftand "errors" 
distance at least 11 words)