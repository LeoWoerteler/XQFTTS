(: insert-start :)
declare variable $input-context external;
(: insert-end :)

/books/book ftcontains ("web" ftand "site" ordered)
ftand ("usability" ftor "testing") window 10 words
