(: insert-start :)
declare variable $input-context external;
(: insert-end :)

$input-context//book[content/p ftcontains "salon de thé" without default stop words language "fr"
