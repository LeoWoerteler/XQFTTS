(: insert-start :)
declare variable $input-context external;
(: insert-end :)


for $book in $input-context/books/book[./metadata/title ftcontains 
   "usability"]
return &lt;book number="{$book/@number}"&gt;
          {$book/metadata/title,
             if (count($book/metadata//author) &gt; 0) 
             then $book/metadata//author 
             else $book/metadata//publisher}
       &lt;/book&gt;