(: insert-start :)
declare variable $input-context external;
(: insert-end :)

$input-context//book[@number="1"]/title ftcontains "improv.*" with wildcards
