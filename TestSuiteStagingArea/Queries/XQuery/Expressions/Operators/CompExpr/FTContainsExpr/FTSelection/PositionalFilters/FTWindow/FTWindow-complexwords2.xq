(: insert-start :)
declare variable $input-context external;
(: insert-end :)

$input-context/books/book[para ftcontains 
(("ninja" ftand "knows") ftand ("coder" ftand "otherwise")) window 0 words]/title

