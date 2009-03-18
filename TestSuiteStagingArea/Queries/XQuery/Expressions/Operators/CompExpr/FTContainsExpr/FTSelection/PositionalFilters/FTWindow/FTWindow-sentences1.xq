(: insert-start :)
declare variable $input-context external;
(: insert-end :)

$input-context/books/book[para ftcontains ("swift" ftand "software") window exactly 2 sentences]/title
