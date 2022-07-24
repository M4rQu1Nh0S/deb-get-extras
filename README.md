<h1 align="center">
  <img src=".github/deb-get-logo.png" alt="deb-get">
  <br />
  <tt>deb-get-extras</tt>
</h1>

<p align="center">
  <b>
    <tt>deb-get-extras</tt> is a personal repository with custom inclues for more 3rd party apt repositories and PPAs.
  </b>
</p>

## Install

*To use `deb-get-extras` you need install the `deb-get` first <br/>
[https://github.com/wimpysworld/deb-get#install](https://github.com/wimpysworld/deb-get#install)*

##### With install.sh

1. Use **install.sh** file to auto install:
```
sudo apt install -y curl
curl -sL https://raw.githubusercontent.com/M4rQu1Nh0S/deb-get-extras/main/install.sh | sudo -E bash -s install.sh
```
##### Step by step

1. Clone this repository with:
```
git clone https://github.com/M4rQu1Nh0S/deb-get-extras.git
```

2. Create the directory `/etc/deb-get.d` (directory used for **Custom User Includes**) 
```
sudo mkdir /etc/deb-get.d/
```

3. Copy the folder `01-deb-get-extras` to /etc/deb-get.d/
```
sudo cp -r ./deb-get-extras/01-deb-get-extras /etc/deb-get.d
```

4. Update the `deb-get`
```
deb-get update
```

5. Delete deb-get-extras folder
```
sudo rm -r deb-get-extras
```
## How to add more repositories
Follow this instructions at deb-get README.md file to create 'custom inclues':

>
>### Custom User Includes `/etc/deb-get.d/`
> {...}
>
>How to use:
>
>* Manually create the folder `/etc/deb-get.d/` if not exist already. By default `deb-get` does not create this folder unless your specific distribution has packaged it that way.
>* Can also create any arbitrary nested sub-folder structure within `/etc/deb-get.d/**/*` main folder
>* Any files within this tree will be bash sourced in alphabetical order e.g. `. /etc/deb-get.d/01-pending-merge/10-appname1`
>* Your user custom `deb_*` functions are then loaded directly after the last `deb_*()` package declarations that officially come with `deb-get`
>
> {...}
>

### Softwares available with `deb-get-extras`

<!-- [[[cog
pretty_list = subprocess.check_output(["./deb-get", "prettylist"], encoding="utf-8")
cog.out(pretty_list)
]]] -->
| Source   | Package Name   | Description   |
| :------: | :------------- | :------------ |
| [<img src=".github/launchpad.png" align="top" width="20" />](https://www.mozilla.org/firefox/) | `firefox` | <i> Safe and easy web browser from Mozilla. (Non ESR/Snap)</i> |
| [<img src=".github/gitlab.png" align="top" width="20" />](https://gitlab.com/volian/nala) | `nala` | <i> Commandline frontend for the APT package manager for Ubuntu 22.04 / Debian Sid and newer.</i> |
| [<img src=".github/gitlab.png" align="top" width="20" />](https://gitlab.com/volian/nala) | `nala-legacy` | <i> Commandline frontend for the APT package manager for older distributions like Ubuntu 21.04.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://github.com/TheGoddessInari/hamsket) | `hamsket` | <i>Free, Open Source and Cross Platform messaging and emailing app that combines common web applications into one. </i> |

**Legend**

The icons above denote how `deb-get` installs/updates the packages.

- <img src=".github/debian.png" align="top" width="20" /> apt repository
- <img src=".github/github.png" align="top" width="20" /> GitHub releases
- <img src=".github/gitlab.png" align="top" width="20" /> GitLab releases
- <img src=".github/launchpad.png" align="top" width="20" /> Launchpad PPA
- <img src=".github/direct.png" align="top" width="20" /> Website

### How do package updates work?

#### 3rd party apt repositories and PPAs

If packages are available via a 3rd party `apt` repository
<img src=".github/debian.png" align="top" width="20" /> or a Launchpad PPA
<img src=".github/launchpad.png" align="top" width="20" />, then those packages
will be updated/upgraded when using `apt-get update` and `apt-get upgrade`.

#### GitHub/GitLab Releases and direct downloads

For `.deb` packages that are only available via GitHub/GitLab Releases
<img src=".github/github.png" align="top" width="20" /> <img src=".github/gitlab.png" align="top" width="20" /> or direct download
<img src=".github/direct.png" align="top" width="20" />, then those packages
can only be updated/upgrade by using `deb-get update` and `deb-get upgrade`.
