(: insert-start :)
declare variable $input-context external;
(: insert-end :)

for $chapter in $input-context/books/book//chapter
where $chapter contains text "workstation" ftand "lab" 
   distance at most 6 words without content .//footnote[. 
   contains text "workstation." using wildcards]   
return ($chapter/ancestor::book/metadata/title, $chapter/(p|p/footnote))