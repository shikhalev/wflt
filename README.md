# wflt

Suppress warnings from gems and vendor sources.

[![Gem Version](https://badge.fury.io/rb/wflt.svg)](http://badge.fury.io/rb/wflt)
[![GitHub license](https://img.shields.io/badge/license-LGPLv3-orange.svg?style=flat)](https://raw.githubusercontent.com/shikhalev/wflt/master/LICENSE)

## Usage

1. Install gem.

2. Add next line to local bash profile:
  
  ```Bash
  export RUBYOPT="-w -rwflt $RUBYOPT"
  ```
  
3. Copy [`.wflt.rb`](.wflt.rb) to project directory or to `~/.config/wflt.rb` for suppress warnings from system-wide installed files.

4. Also you can add by `<<` operator any `RegExp` for additional filters.
