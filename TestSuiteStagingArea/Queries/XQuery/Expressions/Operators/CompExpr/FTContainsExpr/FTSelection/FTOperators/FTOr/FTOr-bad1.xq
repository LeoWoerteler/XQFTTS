(: FTOr-bad1: 'or' instead of 'ftor': error :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

$input-context/books/book[para ftcontains ("software" or "ninja")]/title
