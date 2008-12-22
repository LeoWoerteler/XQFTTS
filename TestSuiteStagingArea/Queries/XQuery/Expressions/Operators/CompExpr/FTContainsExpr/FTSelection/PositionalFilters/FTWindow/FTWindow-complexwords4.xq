(: insert-start :)
declare variable $input-context external;
(: insert-end :)

$input-context/books/book[para ftcontains ("usability" not in "usability studies") ftand "software" window 30 words]/title
