#! /usr/bin/env fan

// Copyright (C) 2022, Alliance for Sustainable Energy, LLC
// All Rights Reserved

using build

**
** Build: nrelCsvExt
**

class Build : BuildPod
{
  new make()
  {
    podName = "nrelCsvExt"
    summary = "Import and export functions for CSV data"
    version = Version("0.9.5")
    meta    = [
                "ext.name":        "nrelCsv",
                "ext.depends":     "io,nrelUtility",
                "ext.icon":        "table",
                "org.name":        "NREL",
                "org.uri":         "https://www.nrel.gov/",
                "proj.name":       "NREL CSV Extension",
                "proj.uri":        "https://github.nrel.gov/IntelligentCampus/nrelCsvExt",
                "license.name":    "BSD-3",
                "skyspark.docExt": "true",
              ]
    depends = ["sys 1+", "hx 3.1+"]
    resDirs = [`lib/`, `locale/`]
    index   = ["skyarc.ext": "nrelCsvExt"]
  }
  
  // To publish to StackHub, use: bin/fan /path/to/build.fan publish 
  // For more information, see: https://skyfoundry.com/doc/stackhub/index#publishing
  
  //Future Use...
  //@Target { help = "Publish to stackhub.org " }
  //Void publish() { stackhub::PublishTask(this).run }
}