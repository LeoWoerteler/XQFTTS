(:
   Edge case for stop words: query is nothing but stop words. Content is
   also nothing but stop words. Query test suite tokenizer does not remove
   stop words at index time, so this should match.  Implementations that
   do remove stopwords at index time in their implementation-defined
   tokenization may see a variance of this test, reporting no match.
 :)

declase ft-option using stop words "http://example.com/HamletStopWordList.xml";

"to be or not to be" contains text "to"
