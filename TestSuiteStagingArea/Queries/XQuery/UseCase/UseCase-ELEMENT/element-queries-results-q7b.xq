(: insert-start :)
declare variable $input-context external;
(: insert-end :)

$input-context/books/book/metadata/title[count(. ftcontains 
"improv.* the usability of a web site through expert 
reviews and usability testing" with wildcards entire content)>0]
