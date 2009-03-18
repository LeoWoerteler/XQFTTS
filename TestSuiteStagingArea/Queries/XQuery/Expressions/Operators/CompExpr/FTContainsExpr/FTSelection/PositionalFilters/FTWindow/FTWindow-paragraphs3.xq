(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $x := 1 return
$input-context/books/book[content ftcontains ("heuristic" ftand "experience") window at least $x paragraphs]/metadata/title
