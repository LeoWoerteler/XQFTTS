(: insert-start :)
declare variable $input-context external;
(: insert-end :)


$input-context/books/book[.//chapter ftcontains "at any computer 
workstation or in a lab" without content 
.//footnote[. ftcontains "workstation." using wildcards]]
/(metadata/title, .//chapter)