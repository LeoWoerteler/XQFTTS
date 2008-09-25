(: insert-start :)
declare variable $input-context external;
(: insert-end :)


$input-context/books/book[content ftcontains ("successfully" 
ftand "completing" ftand "tasks"
window (count(content/part/chapter) * 3) 
words) with stemming)]/(metadata/title, content)