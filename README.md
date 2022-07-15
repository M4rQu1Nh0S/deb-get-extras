# Additional "Custom User Includes" for deb-get
Repository with more 3rd party apt repositories and PPAs for deb-get which is not part of deb-get package lists.

## How it works
We follow the instructions at deb-get README.md file to create custom inclues:

>
>### Custom User Includes `/etc/deb-get.d/`
> {...}
>
>How to use:
>
>* Manually create the folder `/etc/deb-get.d/` if not exist already. By default `deb-get` does not create this folder unless your specific distribution has packaged it >that way.
>* Can also create any arbitrary nested sub-folder structure within `/etc/deb-get.d/**/*` main folder
>* Any files within this tree will be bash sourced in alphabetical order e.g. `. /etc/deb-get.d/01-pending-merge/10-appname1`
>* Your user custom `deb_*` functions are then loaded directly after the last `deb_*()` package declarations that officially come with `deb-get`
>
> {...}
>
## How to add this sources in deb-get
1. Open the system terminal
2. Create the following directory with the command:
$ sudo mkdir -p /etc/deb-get.d/01-custom-app-source/
3. Create a new file with *nano* (or another text editor):
$ sudo nano /etc/deb-get.d/01-custom-app-source/10-extras.list
4. Copy the content of this file
5. Pasta in Terminal with nano open
6. Press Ctrl + X and type Y
7. Enter the command:
$ deb-get update
8. Install your packages (e.g. "firefox-stable")

## Software available in this repository

The software below can be installed, updated and removed using `deb-get`.

- `deb-get install <packagename>`
- `deb-get update`
- `deb-get upgrade`
- `deb-get remove <packagename>`
- `deb-get purge <packagename>`

<!-- [[[cog
pretty_list = subprocess.check_output(["./deb-get", "prettylist"], encoding="utf-8")
cog.out(pretty_list)
]]] -->
| Source   | Package Name   | Description   |
| :------: | :------------- | :------------ |
| [<img src=".github/launchpad.png" align="top" width="20" />](https://www.mozilla.org/firefox/) | `firefox-stable` | <i> Safe and easy web browser from Mozilla.</i> |
| [<img src=".github/gitlab.png" align="top" width="20" />](https://gitlab.com/volian/nala) | `nala` | <i> Commandline frontend for the APT package manager for Ubuntu 22.04 / Debian Sid and newer.</i> |
| [<img src=".github/gitlab.png" align="top" width="20" />](https://gitlab.com/volian/nala) | `nala-legacy` | <i> Commandline frontend for the APT package manager for older distributions like Ubuntu 21.04.</i> |


**Legend**

The icons above denote how `deb-get` installs/updates the packages.

- <img src=".github/debian.png" align="top" width="20" /> apt repository
- <img src=".github/github.png" align="top" width="20" /> GitHub releases
- <img src=".github/gitlab.png" align="top" width="20" /> GitLab releases
- <img src=".github/launchpad.png" align="top" width="20" /> Launchpad PPA
- <img src=".github/direct.png" align="top" width="20" /> Website
