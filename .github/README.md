# Range IPv4 Address
[heading__title]:
  #range-ipv4-address
  "&#x2B06; Top of this page"


[`range-ipv4-address.sh`][range_ipv4_address__master__source_code], contains a function that returns IP address **with** range.


> The following covers how to install this branch as a submodule within your own project, and parameters that `range-ipv4-address.sh` currently responds to.


## [![Byte size of range-ipv4-address.sh][badge__master__range_ipv4_address__source_code]][range_ipv4_address__master__source_code] [![Open Issues][badge__issues__range_ipv4_address]][issues__range_ipv4_address] [![Open Pull Requests][badge__pull_requests__range_ipv4_address]][pull_requests__range_ipv4_address] [![Latest commits][badge__commits__range_ipv4_address__master]][commits__range_ipv4_address__master]



------


#### Table of Contents


- [&#x2B06; Top of ReadMe File][heading__title]

- [:zap: Quick Start][heading__quick_start]

  - [:memo: Edit Your ReadMe File][heading__edit_your_readme_file]
  - [:shell: Example Usage][heading__example_usage]
  - [:floppy_disk: Commit and Push][heading__commit_and_push]

- [:scroll: API][heading__api]

- [:card_index: Attribution][heading__attribution]

- [:copyright: License][heading__license]


------



## Quick Start
[heading__quick_start]:
  #quick-start
  "&#9889; ...well as quick as it may get with things like this"


**Bash Variables**


```Bash
_module_https_url='https://github.com/network-utilities/range-ipv4-address.git'
_module_relative_path='modules/range-ipv4-address'
```


**Git Commands**


```Bash
cd "<your-git-project-path>"

git checkout master
git submodule add -b master --name range-ipv4-address "${_module_https_url}" "${_module_relative_path}"
```


### Edit Your ReadMe File
[heading__edit_your_readme_file]:
  #edit-your-readme-file
  "&#x1F4DD; Suggested additions so everyone has a good time with submodules"


Suggested additions so everyone has a good time with submodules


```MarkDown
Clone with the following to avoid incomplete downloads


    git clone --recurse-submodules <url-for-your-project>


Update/upgrade submodules via


    git submodule update --init --recursive --merge
```


### Example Usage
[heading__example_usage]:
  #example-usage
  "&#x1F41A; Example of sourcing and utilize `range_ipv4_address` features"


Example of sourcing and utilize `range_ipv4_address` features


**`example_usage.sh`**


```Bash
#!/usr/bin/env bash


## Find true directory this script resides in
__SOURCE__="${BASH_SOURCE[0]}"
while [[ -h "${__SOURCE__}" ]]; do
    __SOURCE__="$(find "${__SOURCE__}" -type l -ls | sed -n 's@^.* -> \(.*\)@\1@p')"
done
__DIR__="$(cd -P "$(dirname "${__SOURCE__}")" && pwd)"


## Source module code within this script
source "${__DIR__}/modules/range-ipv4-address/range-ipv4-address.sh"


_ranged_ipv4_address="$(range_ipv4_address '192.168.0.5')"
printf 'IPv4 Address: %s\n' "${_ranged_ipv4_address}"
```


**Test that things work!**


### Commit and Push
[heading__commit_and_push]:
  #commit-and-push
  "&#x1F4BE; And congratulate yourself on not having to write something similar!"



```Bash
git add .gitmodules
git add modules/range-ipv4-address
git add README.md


git commit -F- <<'EOF'
:heavy_plus_sign: Adds network-utilities/range-ipv4-address#1 submodule


**Edits**


- `README.md` file, documentation updates for submodules


**Additions**

- `.gitmodules` file, tracks other Git repository code utilized by this project

- `modules/range-ipv4-address` submodule, Git tracked dependency
EOF


git push origin master
```


**:tada: Excellent :tada:** your repository is now ready to begin unitizing code from this project!


___


## Range IPv4 Address API
[heading__api]:
  #range-ipv4-address-api
  "&#x1F4DC; The arguments that `range_ipv4_address` understands"


Lists listening ports for given service and protocol via `netstat`


| Param | Type |  | Description |
|---|---|---|---|
| `$1` | string | **required** | Local NAT IP address to calculate range for |


**Returns: `string`**, IP address


**Throws** `Parameter_Error: ipv4_range_from_address not provided an IP address`, when first parameter is not defined


**Example:** as a string


```Bash
_ranged_ipv4_address="$(range_ipv4_address 'sshd')"

printf 'IPv4 Address: %s\n' "${_ranged_ipv4_address}"
#> IPv4 Address: 192.168.0.5/16
```


___


## Attribution
[heading__attribution]:
  #attribution
  "&#x1F4C7; helpful resources for making this repository"


- https://en.wikipedia.org/wiki/Reserved_IP_addresses


___


## License
[heading__license]:
  #license
  "&#x00A9; Legal bits of Open Source software"


```
Range IPv4 Address submodule quick start documentation
Copyright (C) 2019  S0AndS0

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU Affero General Public License as published
by the Free Software Foundation; version 3 of the License.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Affero General Public License for more details.

You should have received a copy of the GNU Affero General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.
by `jesin`
on
```



[badge__travis_ci__range_ipv4_address]:
  https://img.shields.io/travis/network-utilities/range-ipv4-address/example.svg

[travis_ci__range_ipv4_address]:
  https://travis-ci.com/network-utilities/range-ipv4-address
  "&#x1F6E0; Automated tests and build logs"


[badge__commits__range_ipv4_address__master]:
  https://img.shields.io/github/last-commit/network-utilities/range-ipv4-address/master.svg

[commits__range_ipv4_address__master]:
  https://github.com/network-utilities/range-ipv4-address/commits/master
  "&#x1F4DD; History of changes on this branch"


[range_ipv4_address__community]:
  https://github.com/network-utilities/range-ipv4-address/community
  "&#x1F331; Dedicated to functioning code"


[range_ipv4_address__example_branch]:
  https://github.com/network-utilities/range-ipv4-address/tree/example
  "If it lurches, it lives"


[badge__issues__range_ipv4_address]:
  https://img.shields.io/github/issues/network-utilities/range-ipv4-address.svg

[issues__range_ipv4_address]:
  https://github.com/network-utilities/range-ipv4-address/issues
  "&#x2622; Search for and _bump_ existing issues or open new issues for project maintainer to address."


[badge__pull_requests__range_ipv4_address]:
  https://img.shields.io/github/issues-pr/network-utilities/range-ipv4-address.svg

[pull_requests__range_ipv4_address]:
  https://github.com/network-utilities/range-ipv4-address/pulls
  "&#x1F3D7; Pull Request friendly, though please check the Community guidelines"


[badge__master__range_ipv4_address__source_code]:
  https://img.shields.io/github/size/network-utilities/range-ipv4-address/range-ipv4-address.sh.svg?label=range-ipv4-address.sh

[range_ipv4_address__master__source_code]:
  https://github.com/network-utilities/range-ipv4-address/blob/master/range-ipv4-address.sh
  "&#x2328; Project source code!"
