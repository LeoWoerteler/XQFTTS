(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $x := 2 return
$input-context/books/book[para ftcontains ("swift" ftand "software") window exactly $x sentences]/title
