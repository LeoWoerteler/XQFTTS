(: insert-start :)
declare variable $input-context external;
(: insert-end :)

<results>{
$input-context//*[. ftcontains "Web Usability" without content $input-context//annotation]
}</results>
