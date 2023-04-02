Regression Tests
================

This directory contains instructions and resource files for performing basic
unit tests of **nrelCsvExt**.

Resource Files
--------------

The following CSV data files are intended for testing the CSV import functions:

Filename                   | Contains                  | Use With
-------------------------- | ------------------------- | ----------------------------
`test-data-types.csv`      | Generic test data         | `csvImportRecs()`
`test-weatherStations.csv` | Weather station records   | `csvImportWeatherStations()`
`test-campuses.csv`        | Site records (campuses)   | `csvImportSites()`
`test-buildings.csv`       | Site records (buildings)  | `csvImportSites()`
`test-floors.csv`          | Space records (floors)    | `csvImportSpaces()`
`test-rooms.csv`           | Space records (rooms)     | `csvImportSpaces()`
`test-equips.csv`          | Equip records             | `csvImportEquips()`
`test-points.csv`          | Point records             | `csvImportPoints()`
`test-his.csv`             | Point history             | `csvImportHistory()`
`test-his-errors.csv`      | Point history (w/ errors) | `csvImportHistory()`

Tests
-----

The record data in the resource files is internally compatible, such that you
can run tests for all the CSV import functions in sequence. A basic test suite
is provided in `test.trio`:

1. Install the `nrelCsvExt` pod
2. Enable the `nrelCsv` extension
3. Import the contents of `test.trio` into a blank SkySpark project
4. Run `testNrelCsvExt()` to execute the tests

For more information, see `testNrelCsvExt()` code and comments.

**To Do:** More advanced unit test suite.