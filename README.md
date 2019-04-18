CareSet MyWind
=================

This started out as a hacked fork of https://github.com/dalers/mywind
Which is itself an example of the Microsoft Northwind database

Since then it has grown into a test database that is specifically designed to both show-off and to deeply test
the capabilities of two [CareSet](https://careset.com) Open Source Projects.

It is modified specifically as a test platform for https://github.com/CareSet/DURC
and https://github.com/CareSet/Zermelo

Which are the Laravel data viewing and data editing projects from CareSet. 

The northwind_data and northwind_model tables
-----------------

The original port of that db structure lives under the northwind_start subdirectory.

It is super helpful to see the diagram:
https://raw.githubusercontent.com/dalers/mywind/master/northwind-erd.png

which has been copied to /diagrams for good measure. 

The version of the northwind database in this directory splits the original databases 
into multiple database, in order to intentionally add complexity to 
the DURC compiler. It also either enforces the DURC naming conventions or uses Foreign Keys to ensure that the DURC can understand and properl model the relationships
in the data 

Tests: 

* Verify that cross database linking is occuring correctly when DURC is called with both the northwind_model and northwind_data database as arguments
* verify that all of the select2 drop downs are working for object creation
* verify that the listing of data in the list mode in DURC is working correctly, and paging correctly. 

The aaa and irs test database tables
----------------------

The irs database is an actual list of non-profit names. 
The aaa database has a bunch of random DURC related test tables, but mostly it has a table called "donation" which links to nonprofitcorp_id which 
should invoke DURC to use a select2 chooser that hits the irs database, which has enough rows that it servers as a reasonable test
of the select2 functionality. 

Tests: 
* Make sure that you can create new donations in the aaa database, and select very different nonprofit organizations by name. 
* donations should support soft-delete
* Verify that Foreign Keys are working using foreignkeytestthingy, etc 
* Verify that funnything table has reasonable editing functionality. This is just a list of commonly used MySQL data types
* The 'Should be Ignored' table is there precicely to show that DURC will ignore tables with spaces in the names
* All of the bookstore data tables are tests to make certain that basic select2 linking works correctly. 
* the blog and comment tables are similar, but for the simpler one to many data model works.
* the sibling table exists to ensure that DURC can handle self-referential tables, even double links to self-referential tables
* test_created_only exists to ensure that DURC can hendle the case where there is no updated_at field correctly.
* test_boolean has only fields that should just be checkboxes
* vote table exists to ensure that tables with out names work correctly and that the number is not misused as a linking column etc.
* the magic field table supports the creation of markdown and several code fields, as well as user editable datetime and date. This should automatically envoke special editors in DURC.  




