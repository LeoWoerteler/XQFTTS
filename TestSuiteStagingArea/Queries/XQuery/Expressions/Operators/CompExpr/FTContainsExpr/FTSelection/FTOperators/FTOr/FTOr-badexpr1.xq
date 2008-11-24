(: FTOr-badexpr1: Bad computed expression :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

$input-context/books/book[para ftcontains {()} ftor "ninja"]/title
