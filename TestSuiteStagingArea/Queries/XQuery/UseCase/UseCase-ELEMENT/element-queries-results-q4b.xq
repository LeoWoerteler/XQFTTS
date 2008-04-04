(: insert-start :)
define variable $input-context external
(: insert-end :)

$input-context
/books/book[count(./metadata/title[. ftcontains "usability tests"] 
union ./content/part/chapter/title[. ftcontains "usability tests"])>0]
