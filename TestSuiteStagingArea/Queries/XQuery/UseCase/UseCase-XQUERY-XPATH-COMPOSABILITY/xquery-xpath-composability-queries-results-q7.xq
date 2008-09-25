(: insert-start :)
declare variable $input-context external;
(: insert-end :)


for $book in $input-context/books/book[./metadata/publicationInfo/
   (dateIssued|dateRevised) &gt; "2000-12-31" 
   and count(metadata/author) &gt; 1]
let $subj := $book//subject
where $subj ftcontains "usability test.*" with wildcards
return &lt;book number="{$book/@number}"&gt; 
          {$book/metadata/title, $book/metadata/author, $subj}
           &lt;/book&gt;