# choco-packages

## Description
This is the repo containing all of the custom chocolatey packages that will be pulled down onto Chocolatey Server within each project, in side the new automated windows deployment project.

This repo contains both a dev environment as well as prod. Once packages are finished they should be moved into the prod directory. The ansible script that downloads these packages only checks the prod directory.

## Some of the packages will not work as I hard to remove license keys and other closed source specific files
