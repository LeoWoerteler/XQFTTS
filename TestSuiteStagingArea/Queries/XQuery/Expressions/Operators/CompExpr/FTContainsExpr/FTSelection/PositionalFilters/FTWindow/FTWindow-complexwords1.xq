(: insert-start :)
declare variable $input-context external;
(: insert-end :)

$input-context/books/book[para ftcontains ("ninja" ftand "coder" ftand "knows") window 0 words]/title
