(: insert-start :)
declare variable $input-context external;
(: insert-end :)

/books/book ftcontains "web" ftand "site" ftand
"usability" distance at most 2 words
