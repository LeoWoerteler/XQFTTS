(: 3.2 FTPrimary ::= FTWordsValue FTAnyAllOption?    :)
(:     FTAnyAllOption ::= ( "any" "word"? | ...      :)
(:   Test to ensure that the syntax is recognized    :)
(:     and that the right result is computed         :)
(:   Test assumes $input-context identifies FT spec  :)
(:   This tests the assertion: If FTAnyallOption is  :)
(:     "any", the sequence of tokens for each string :)
(:     is considered as a phrase, i.e. a match is    :)
(:     found in the tokenized form of the text being :)
(:     searched, whenever that form contains a       :)
(:     subsequence of tokens that corresponds to the :)
(:     sequence of query tokens in an                :)
(:     implementation-defined way and that           :)
(:     subsequence of tokens covers consecutive      :)
(:     token positions in the tokenized text. If the :)
(:     value of the FTWordsValue contains more than  :)
(:     one string, the different strings are         :)
(:     considered to be alternatives, i.e. the       :)
(:     resulting matches must contain at least one   :)
(:     of the generated phrases.                     :)
(:   It also tests the assertion: If FTAnyallOptions :)
(:     is omitted, "any" is the default.             :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

<paragraphs>
{ for $p in $input-context//div2[@id="ftwords"]/p
where $p contains text { "voting", "weekend" }
return $p }
</paragraphs>