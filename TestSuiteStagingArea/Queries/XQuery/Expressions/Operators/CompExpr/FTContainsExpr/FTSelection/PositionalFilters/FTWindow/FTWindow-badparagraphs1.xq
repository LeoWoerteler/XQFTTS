(: insert-start :)
declare variable $input-context external;
(: insert-end :)

$input-context/books/book[content ftcontains ("heuristic" ftand "experience") window 0 paragraph]/metadata/title
