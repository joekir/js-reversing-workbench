# JavaScript Reversing Workbench

Containerized tools for reviewing (potentially) obfuscated JavaScript

## Current Tools in the Container

- [illuminate.js](https://illuminatejs.com/)    
  This is wrapped in a script, so you can just call    
  `$ illuminate.sh <file.js>` from anywhere to get the deobfuscated output

## Building

`$ ./scripts/build_docker.sh`

## Launch

Add the samples that you'd like to look at to `volumes/samples` directory, and this will get mounted in as your working dir

_networking is disabled by default_    
`$ ./scripts/launch.sh`
