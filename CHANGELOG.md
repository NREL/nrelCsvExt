# Changelog

This file tracks notable changes to **nreCsvExt**. The format is based on
[Keep a Changelog], and this project adheres to [Semantic Versioning].

[Keep a Changelog]: https://keepachangelog.com/ "Keep a Changelog"
[Semantic Versioning]: https://semver.org/ "Semantic Versioning"

## Unreleased

[View Changes](https://github.com/NREL/nrelCsvExt/compare/main...develop)

### Added

- [Change log](https://github.com/NREL/nrelCsvExt/blob/main/CHANGELOG.md)

## [v0.9.5 Beta] (2023-04-02)

[v0.9.5 Beta]: https://github.com/NREL/nrelCsvExt/releases/tag/v0.9.5

[View Changes](https://github.com/NREL/nrelCsvExt/compare/v0.9.4...v0.9.5)

### Added

- `"auto"`, `"dict"`, `"list"`, and `"float"` data types for CSV column
  specifications
- `overwrite` option for `csvImportHistory()` allows writing to time spans with
  existing data
- `csvExportHistory()` for writing point history to CSV files
- Documentation for importing nested `site`, `space`, and `equip` records
- Basic unit tests

### Changed

- `csvImport*` functions (and some others) are now `overridable`
- `csvImportSites()`, `csvImportSpaces()`, and `csvImportEquips()` now allow
  nesting of `site`, `space`, and `equip` records, respectively
- `csvImportRecs()` now automatically strips leading and trailing \` characters
  when parsing columns of data type `uri`
- General code cleanup
- General documentation cleanup

### Removed

- `parseAuto()`, `parseCoord()` and `parseDict()` (moved to
  [nrelUtilityExt](https://github.com/NREL/nrelUtilityExt/))
- `axon` data type for CSV column specification (instead, use `auto`)
- `safe` import option (no longer relevant because `axon` data type was also
  removed)

## [v0.9.4 Beta] (2022-02-28)

[v0.9.4 Beta]: https://github.com/NREL/nrelCsvExt/releases/tag/v0.9.4

[View Changes](https://github.com/NREL/nrelCsvExt/compare/v0.9.3...v0.9.4)

### Added

- `csvImportSpaces()` for importing `space` records
- `safe` mode (enabled by default) disallows `axon` data type in CSV column
  specification to prevent unintended use of `eval()`
- (Temporary) parsing functions `parseAuto()`, `parseCoord()` and `parseDict()`
- Extension documentation
- BSD3 license

### Changed

- Renamed **csvExt** to **nrelCsvExt**
- Rewrote functions to take advantage of SkySpark 3.1+
- Reworked import control options for more consistency and flexibility
- `csvReadRecs()` is now `csvImportRecs()`
- `csvImportWeather()` is now `csvImportWeatherStations()` for consistency with
  Haystack 4
  
### Removed

- `csvImportWeatherPoints()` (instead use `csvImportPoints()`)

## [v0.9.3 Beta] (2019-01-23)

[v0.9.3 Beta]: https://github.com/NREL/nrelCsvExt/releases/tag/v0.9.3

[View Changes](https://github.com/NREL/nrelCsvExt/compare/v0.9.2...v0.9.3)

### Added

- Support for `"ignore"` column type to `csvReadRecs()` column specification,
  for ignoring unwanted columns
- Support for composite (multiple column) timestamps to `csvImportHistory()`
- `primaryFunction` and `yearBuilt` fields to `site` record import template

### Changed

- Improved error logging
- Documentation updates

### Fixed

- `csvImportHistory()` again properly drops data prior to point's `hisEnd`

## [v0.9.2 Beta] (2018-10-27)

[v0.9.2 Beta]: https://github.com/NREL/nrelCsvExt/releases/tag/v0.9.2

[View Changes](https://github.com/NREL/nrelCsvExt/compare/v0.9.1...v0.9.2)

### Added

- Uri parsing to `csvReadRecs()`

### Changed

- Updated dependency `utilityExt` to `nrelUtilityExt`

## [v0.9.1 Beta] (2018-05-17)

[v0.9.1 Beta]: https://github.com/NREL/nrelCsvExt/releases/tag/v0.9.1

[View Changes](https://github.com/NREL/nrelCsvExt/compare/v0.9...v0.9.1)

### Fixed

- Corrected version for `utilityExt` dependency

## [v0.9 Beta] (2017-11-10)

[v0.9 Beta]: https://github.com/NREL/nrelCsvExt/releases/tag/v0.9

### Added

- Initial packaging of NREL CSV Axon functions

### Security

- For columns with the `axon` data type, `csvReadRecs()` directly evaluates Axon
  expressions loaded as text from the source CSV file. This presents a security
  risk if the provenance of the source file is unknown. This issue is present
  in versions 0.9 - 0.9.4.