#! /usr/bin/env fan

// Copyright (C) 2017, National Renewable Energy Laboratory
// All Rights Reserved

using build

**
** Build: csvExt
**
class Build : BuildPod
{
  new make()
  {
    podName = "csvExt"
    summary = "CSV Data Import Functions"
    version = Version("0.9.1")
    meta    = [
                "ext.name":        "csv",
                "ext.icon24":      "fan://frescoRes/img/iconMissing24.png",
                "ext.icon72":      "fan://frescoRes/img/iconMissing72.png",
                "org.name":        "NREL",
                "org.uri":         "https://www.nrel.gov/",
                "proj.name":       "CSV",
                "proj.uri":        "https://github.nrel.gov/sfrank1/csvExt",
                "license.name":    "Commercial",
                "skyspark.docExt": "true",
              ]
    depends = ["sys 1.0", "axon 3.0", "ioExt 3.0", "utilityExt 1.1+"]
    resDirs = [`locale/`,
               `lib/`]
    index   =
    [
      "skyarc.ext": "csvExt",
    ]
  }
}