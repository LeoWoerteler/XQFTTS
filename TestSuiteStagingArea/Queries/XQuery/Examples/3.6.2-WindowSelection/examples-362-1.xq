(: insert-start :)
declare variable $input-context external;
(: insert-end :)

/books/book/title ftcontains "web" ftand "site"
ftand "usability" window 5 words