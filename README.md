nrelCsvExt: Import and Export Functions for CSV Data
====================================================

**nrelCsvExt** is a [SkySpark] extension that provides utility functions for the
import and export of CSV data implemented in the [Axon] programming language. This
package is developed and provided free of charge by the
[National Renewable Energy Laboratory].

**nrelCsvExt** requires SkySpark 3.1 or later and [nrelUtilityExt] 1.1 or later.

[SkySpark]: http://skyfoundry.com/skyspark/ "SkySpark"
[Axon]: https://skyfoundry.com/doc/docHaxall/AxonLang "Axon Language"
[National Renewable Energy Laboratory]: https://www.nrel.gov "NREL"
[nrelUtilityExt]: https://github.com/NREL/nrelUtilityExt/ "NREL Utility Extension"

Build
-----

Build instructions:

1. Create a local clone of this repository on a computer with a working copy of SkySpark.
2. From the command line, change directory to the SkySpark root directory.
3. Execute `bin/fan /path/to/nrelCsvExt/build.fan`.
   - On Linux, you may need to `chmod +x bin/fan` first.
   - Output pod will be `lib/fan/nrelCsvExt.pod` (relative to SkySpark root).
4. Execute `bin/fan docgen` to regenerate documentation.

Build instructions are the same for Windows except paths use backslashes `\` and `fan` becomes
`fan.bat`.

Note that all dependencies need to be in `lib/fan` (relative to SkySpark root); the build script
will not find pods located in `var/lib/fan`.
   
Installation
------------

Select a set of installation instructions below that corresponds to how you
obtained the **nrelCsvExt** extension. Following installation, you must enable
the *nrelCsv* extension in the *Exts* tab of the SkySpark *Settings* app within
each project that needs access to the functions.

### From Source ###

If you built from source, all that is needed to install the extension is to
start (or restart) SkySpark.

### From GitHub ###

1. Download a `nrelCsvExt.pod` release from GitHub.
2. Copy `nrelCsvExt.pod` into the `lib/fan/` directory of your SkySpark
   installation.
3. Set ownership permissions correctly on the pod to match the other pods in
   your SkySpark installation (Linux/Mac).
4. From the command line, change directory to the SkySpark root directory.
5. Execute `bin/fan docgen` to regenerate documentation.
   - Optional; the functions will work without this step but the *Doc* app
     won't show any function documentation.
   - On Linux, you may need to `chmod +x bin/fan` first.
6. Start (or restart) SkySpark.

### From StackHub ###

**nrelCsvExt** is also available [from StackHub]. SkySpark supports direct
installation via Stackhub:

1. Open the *Host* app.
2. Navigate to the *Install* tab.
3. Click the *Install* button and search for "nrelCsvExt".
4. Select the extension when it appears, click *Next*, select the desired
   version, and complete the installation.

[from StackHub]: https://stackhub.org/package/nrelCsvExt "StackHub"

Documentation
-------------

Function documentation is available in the SkySpark *Doc* app under *nrelCsv* or
within the *Docs* interface in the *Code* app.

Contributing
------------

To contribute to `nrelCsvExt`, please feel free to open an issue or a submit a
pull request. If you want to modify the code, you can use `importFunctions()`
and `exportFunctions()` from [nrelUtilityExt] to make your life easier.
Suggested workflow:

1. Put `lib/funcs.trio` in your SkySpark project's `io` directory
2. Run:
   ```
   importFunctions(`io/funcs.trio`, merge:{nrelCsvExtDev})
   ```
3. Make changes
4. Run:
   ``` 
   readAll(nrelCsvExtDev).exportFunctions(`io/funcs.trio`, merge:{-nrelCsvExtDev})
   ```
5. Commit the modified `funcs.trio` to your copy of the repo.

Using the `nrelCsvExtDev` "flag" tag here makes it easy to locate and export the correct set of functions.

License
-------

This software is licensed for use under the terms of the Berkeley Software
Distribution 3-clause (BSD-3) license; see `LICENSE.md`.

