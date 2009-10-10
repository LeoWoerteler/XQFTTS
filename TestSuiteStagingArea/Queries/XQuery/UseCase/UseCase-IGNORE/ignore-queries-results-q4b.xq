(: insert-start :)
declare variable $input-context external;
(: insert-end :)


$input-context/books/book[.//chapter/(p|p/footnote) contains text 
"workstation" ftand "lab" distance at most 6 words 
without content ./footnote]
/(metadata/title, .//chapter/(p|p/footnote))