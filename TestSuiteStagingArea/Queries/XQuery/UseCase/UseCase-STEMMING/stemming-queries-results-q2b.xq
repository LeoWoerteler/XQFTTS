(: insert-start :)
declare variable $input-context external;
(: nsert-end :)


$input-context/books/book[content ftcontains ("usable" with stemming
ftand "testing" phrase) ftor ("use" with stemming
ftand "testing" phrase)]