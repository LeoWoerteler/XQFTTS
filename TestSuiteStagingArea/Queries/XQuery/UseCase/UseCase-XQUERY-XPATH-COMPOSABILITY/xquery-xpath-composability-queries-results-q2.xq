(: insert-start :)
declare variable $input-context external;
(: insert-end :)


for $book in $input-context/books/book
let $ct := $book/content/part/chapter/title
where $ct ftcontains "usability" ftand "test" 
   with stemming
return &lt;book number="{$book/@number}"&gt; 
          {$book/metadata/title,
          for $title in $ct
          return 
             ($title, 
             &lt;number-of-steps&gt; 
                {count($title/..//step)}
             &lt;/number-of-steps&gt;)}
       &lt;/book&gt;