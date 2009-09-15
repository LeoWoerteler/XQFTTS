(: insert-start :)
declare variable $input-context external;
(: insert-end :)

$input-context//book[content//p ftcontains "salon de thé" using stop words default using language "fr"]
