#!/usr/bin/bash

# requires: Environment variable: MEATLOVER_IO_PATH
# slips folder needs to exist
if [ ! -d "$MEATLOVER_IO_PATH/_posts" ]; then
  echo '[FS] Error: cannot find posts folder. exiting.'
  exit 1
fi

slips_header="""---
title:
categories: 
tag:
layout: single
---

"""

if [ $# -ge 1 ] && [ $1 == 'movie' ] ; then
slips_header="""---
title:
categories: movie
tag:
layout: single
---

"""
fi

if [ $# -ge 1 ] && [ $1 == 'album' ] || [ $1 == 'music' ] ; then
slips_header="""---
title:      ""
artist:     
rating:     
year:       
tag:        [album]
screenshot: /assets/images/
apple_ref:  
categories: music
layout:     single
---
{% include music_header.md %}


"""
fi

temp_file=/tmp/footstep-temp.txt
date="$(date +%Y-%m-%d)-$(date +%s)"
year="$(date +%Y)"

mkdir -p $MEATLOVER_IO_PATH/_posts/$year
file="$MEATLOVER_IO_PATH/_posts/$year/$date.md"

if [ $# -ge 1 ] && [ $1 == 'last' ] ; then
  cd $MEATLOVER_IO_PATH/_posts/$year
  latest_file=$(ls *.md | sort | tail -n 1)
  code -ar $MEATLOVER_IO_PATH 
  code -a $latest_file
  cd -
else 
  if [ ! -f "$file" ]; then
    touch "$file"
    echo "$slips_header" > $file
  fi

  code -ar $MEATLOVER_IO_PATH 
  code -a $file
fi
