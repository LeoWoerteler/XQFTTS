(: insert-start :)
declare variable $input-context external;
(: insert-end :)

/books/book[@number="1" and . ftcontains "efficient" 
ftand ftnot "and" window 3 words]
