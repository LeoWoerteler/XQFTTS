(: insert-start :)
declare variable $input-context external;
(: insert-end :)

$input-context/books/book[para ftcontains ("physical" ftand "swift") distance exactly 1 words]/title