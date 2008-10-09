(: insert-start :)
declare variable $input-context external;
(: insert-end :)

/books/book[title ftcontains ("dog" with stemming) ftand "cat"]/author
