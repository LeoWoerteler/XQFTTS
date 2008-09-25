(: insert-start :)
declare variable $input-context external;
(: insert-end :)


for $book in $input-context/books/book
let $bookSubject := 
   $books/metadata[./title/@shortTitle 
   ftcontains "Usability Basics"]/subjects/subject
for $book in $books   
where $book/metadata/publicationInfo/
(dateIssued|dateRevised) &gt; 2001 and 
$book/metadata/subjects/subject ftcontains 
     {$bookSubject} any
return
        &lt;book number="{$book/@number}"&gt;
           {$book/metadata/title,
           $book/metadata/author}
        &lt;/book&gt;