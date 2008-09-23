(: Extension1: Unknown extension should do nothing :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

declare namespace ex="http://www.w3.org/2008/XQuery/FullTextTest";

$input-context//metadata/title ftcontains "Usability" option ex:option "ignored"

