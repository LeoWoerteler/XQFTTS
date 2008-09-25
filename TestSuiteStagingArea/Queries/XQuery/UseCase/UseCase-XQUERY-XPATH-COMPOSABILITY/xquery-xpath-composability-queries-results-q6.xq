(: insert-start :)
declare variable $input-context external;
(: insert-end :)


for $book in $input-context/books/book[metadata/title ftcontains 
   "usability"]
return &lt;book number="{$book/@number}"&gt;
          {$book/metadata/title} 
          &lt;has-publishers&gt; 
             {if (count($book//publisher) &gt; 1) 
             then "true" else "false"}
          &lt;/has-publishers&gt;
       &lt;/book&gt;