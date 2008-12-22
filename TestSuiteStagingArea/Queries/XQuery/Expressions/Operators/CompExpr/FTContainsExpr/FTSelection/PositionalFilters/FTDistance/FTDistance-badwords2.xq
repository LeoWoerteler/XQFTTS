(: insert-start :)
declare variable $input-context external;
(: insert-end :)

$input-context/books/book[para ftcontains ("physical" ftand "swift") distance 2 words]/title
