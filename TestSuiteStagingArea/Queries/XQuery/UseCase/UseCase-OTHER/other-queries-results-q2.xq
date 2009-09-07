(: insert-start :)
declare variable $input-context external;
(: insert-end :)


for $book in $input-context/books/book
let $stitle := $book/metadata/title/@shortTitle    
let $ctitle := $book//componentTitle  
where $stitle ftcontains "manuscript guides"
   using stemming and $ctitle ftcontains "user profiling" 
   using stemming
return data($stitle)