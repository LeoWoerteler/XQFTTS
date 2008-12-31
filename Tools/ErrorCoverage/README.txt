2008-12-30 -- 

Jim Melton noticed that a directory named:
   Error Coverage
had a space in its name.  Because of the different ways in which DOS systems, Unix systems, and URI resolves deal with spaces in directory/file names and URIs, certain hot links in some of the Full Text Test Suite reports failed. 

The solution chosen was to create a new directory named:
   ErrorCoverage
(which was arguably the name intended in the first place), copy all of the contents of the old, badly-named directory into the new directory, add the new directory to CVS, and then remove the old directory from CVS, committing both changes. 

The history of "Error Coverage" and its contained files was very short and it seems very likely that nobody will even need to access that history.  However, it's still available from CVS, even though the directory has been "removed" (that is, marked as not there, but not actually deleted). 

We hope this did not cause any inconvenience, but it really was necessary!