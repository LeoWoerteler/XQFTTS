(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $x := 0 return
$input-context/books/book[para ftcontains ("swift" ftand "software") window $x sentences]/title
