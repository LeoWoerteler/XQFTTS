(: insert-start :)
declare variable $input-context external;
(: insert-end :)

$input-contex/books/book[@number="1"]//p ftcontains "propagating errors" 
with stop words ("few")