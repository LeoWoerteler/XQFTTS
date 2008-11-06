(: insert-start :)
declare variable $input-context external;
(: insert-end :)


for $book in $input-context/books/book[./metadata/publicationInfo/
   (dateIssued|dateRevised) > "2000-12-31" 
   and count(metadata/author) > 1]
let $subj := $book//subject
where $subj ftcontains "usability test.*" with wildcards
return <book number="{$book/@number}"> 
          {$book/metadata/title, $book/metadata/author, $subj}
           </book>