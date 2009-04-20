(: insert-start :)
declare variable $input-context external;
(: insert-end :)

$input-context/books/book[para ftcontains 
("ninja" ftand "coder" window 2 words) ftand "knows" distance exactly 3 words]/title
