#!/usr/bin/env bash
#
#  SCRIPT NAME - SHORT DESCRIPTION
#
#  Version 1.0.0 (MONTH, 99, 2015)
#
#  Copyright (c) 2015 Andrew Krohn
#
#  This software is provided 'as-is', without any express or implied
#  warranty. In no event will the authors be held liable for any damages
#  arising from the use of this software.
#
#  Permission is granted to anyone to use this software for any purpose,
#  including commercial applications, and to alter it and redistribute it
#  freely, subject to the following restrictions:
#
#  1. The origin of this software must not be misrepresented; you must not
#     claim that you wrote the original software. If you use this software
#     in a product, an acknowledgment in the product documentation would be
#     appreciated but is not required.
#  2. Altered source versions must be plainly marked as such, and must not be
#     misrepresented as being the original software.
#  3. This notice may not be removed or altered from any source distribution.
#
## Find scripts location
scriptdir="$( cd "$( dirname "$0" )" && pwd )"
repodir=`dirname $scriptdir`
workdir=$(pwd)

## Usage and help
usage="$repodir/docs/template.usage"
help="$repodir/docs/template.help"

## Check whether user had supplied -h or --help. If yes display help 
	if [[ "$1" == "--help" ]] || [[ "$1" == "-h" ]]; then
	less $repodir/docs/template.help
		exit 0	
	fi

## If other than SOMENUMBEROF arguments supplied, display usage
	if [[ "$#" -ne 2 ]]; then 
	cat $usage
	fi

exit 0
