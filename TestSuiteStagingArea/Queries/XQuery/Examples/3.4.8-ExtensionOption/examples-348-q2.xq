(: 3.4.8 Extension Option: Example 2. Behaviour is implementation-defined,
  but the query should at least parse.
 :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

declare namespace exq = "http://example.org/XQueryImplementation";

$input-context//para[. ftcontains
         ("Kinder" ftand "Platz" distance exactly 1 words)
         with stemming
         option exq:compounds "distance=1" ]
