(: insert-start :)
declare variable $input-context external;
(: insert-end :)

$input-context/books/book[title contains text ("dog" using stemming) ftand "cat"]/author
