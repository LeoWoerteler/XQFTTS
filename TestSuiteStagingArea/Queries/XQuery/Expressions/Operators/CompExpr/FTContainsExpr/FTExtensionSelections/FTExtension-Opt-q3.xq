(: 3.4.8 Extension Option  negative case, string literal is missing:)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)
declare namespace oraxqft = "http://www.oracle.com/technology/tech/xml/xmldb/index.html"
declare ft-option option oraxqft:op "use semantic match";
//para[. ftcontains "Pizza" option oraxqft:op]
