(: insert-start :)
declare variable $input-context external;
(: insert-end :)

$input-context/books/book[para ftcontains 
("ninja" ftand "coder" window 0 words) ftand "knows" distance exactly 0 word]/title