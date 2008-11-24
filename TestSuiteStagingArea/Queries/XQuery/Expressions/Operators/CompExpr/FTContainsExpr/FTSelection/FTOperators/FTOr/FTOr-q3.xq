(: FTOr-q3: Both branches false :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

fn:count($input-context/books/book[para ftcontains "dingbat" ftor "numbskull"]/title)
