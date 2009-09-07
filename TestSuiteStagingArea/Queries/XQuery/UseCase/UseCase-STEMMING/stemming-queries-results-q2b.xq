(: insert-start :)
declare variable $input-context external;
(: insert-end :)


$input-context/books/book[content ftcontains ("usability" using stemming
ftand "testing" phrase) ftor ("users" using stemming
ftand "testing" phrase)]