(: insert-start :)
declare variable $input-context external;
(: insert-end :)

/books/book[@number="1"]//p ftcontains "propagation of errors"
with stemming with stop words ("a", "the", "of")