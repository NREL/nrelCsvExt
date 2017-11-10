Regression Tests
================

This directory contains instructions and resource files for performing basic regressions tests of
**csvExt**.

Resource Files
--------------

The following CSV data files are intended for testing the CSV import functions:

Filename                 | Contains              | Use With
------------------------ | --------------------- | --------------------------
`test-weather.csv`       | Weather records       | `csvImportWeather()`
`test-weatherPoints.csv` | Weather point records | `csvImportWeatherPoints()`
`test-sites.csv`         | Site records          | `csvImportSites()`
`test-equips.csv`        | Equip records         | `csvImportEquips()`
`test-points.csv`        | Point records         | `csvImportPoints()`
`test-his.csv`           | Point history         | `csvImportHistory()`

Regression Tests
----------------

The record data in the resource files is internally compatible, such that you can run tests for all
six CSV import functions in sequence:

```
csvImportWeather(`io/test-weather.csv`, {flag:"imported"})
csvImportWeatherPoints(`io/test-weatherPoints.csv`, {flag:"imported"})
csvImportSites(`io/test-sites.csv`, {flag:"imported"})
csvImportEquips(`io/test-equips.csv`, {flag:"imported"})
csvImportPoints(`io/test-points.csv`, {flag:"imported"})
readAll(point and imported).csvImportHistory(`io/test-his.csv`, {tsColumn:"Timestamp"})
```

### Notes ###

1. `test-his.csv` contains two lines of history designed to produce parsing failures; check the log
   after import to ensure that the appropriate warnings were generated.