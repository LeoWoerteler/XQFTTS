(: insert-start :)
declare variable $input-context external;
(: insert-end :)

$input-context/books/book[content ftcontains ("heuristic" ftand "review") 
distance from 0 to 1 sentences]/metadata/title