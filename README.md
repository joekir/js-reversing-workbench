# JavaScript Reversing Workbench

Containerized tools for reviewing (potentially) obfuscated JavaScript

## Current Tools in the Container

- [illuminate.js](https://illuminatejs.com/)    
  This is wrapped in a script, so you can just call    
  `$ illuminate.sh <file.js>` from anywhere to get the deobfuscated output

## Building

`$ ./scripts/build_docker.sh`

## Launch

_networking is disabled by default_

`$ ./scripts/launch.sh`
