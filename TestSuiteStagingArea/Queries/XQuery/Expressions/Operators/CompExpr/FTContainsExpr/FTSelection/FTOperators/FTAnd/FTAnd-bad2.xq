(: FTAnd-bad2: 'ftand' in nested expression: type error :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

$input-context/books/book[para ftcontains {"software" ftand "ninja"}]/title
