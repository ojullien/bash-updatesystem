# Bash-updatesystem

Simple tool for updating the system.

*Note: I use this script for my own projects, it contains only the features I need.*

## Table of Contents

[Installation](#installation) | [Features](#features) | [Test](#test) | [Contributing](#contributing) | [License](#license)

## Installation

Requires: a Debian/Ubuntu version of linux and a Bash version ~4.4. [bash-sys](https://github.com/ojullien/bash-sys) and [bash-manageservices](https://github.com/ojullien/bash-manageservices) installed.

1. [Download a release](https://github.com/ojullien/bash-updatesystem/releases) or clone this repository.
2. Use [scripts/install.sh](scripts/install.sh) to automatically install the application in the /opt/oju/bash project folder.
3. If needed, add `PATH="$PATH:/opt/oju/bash/bin"` to the .profile files.

## Features

This tool is a wrapper to apt-get functions. With just one command, it allows you to:

1. Re-synchronizes the package index files from their sources.
2. Install the newest versions of all packages currently installed on the system.
3. Updates the package cache and checks for broken dependencies.
4. Removes packages that were automatically installed to satisfy dependencies for other packages and are now no longer needed.
5. Clears out the local repository of retrieved package files.
6. Finds packages and config that have no packages depending on them.
7. Removes unneeded localizations.
8. Updates database for mlocate.
9. Restarts the stopped services.

```bash
Usage: updatesystem.sh [options]

options
  -n | --no-display     Display mode. Nothing is displayed in terminal.
  -l | --active-log     Log mode. Content outputs are logged in a file.
  -w | --wait           Wait user. Wait for user input between actions.
  -h | --help           Show this help.
  -v | --version        Show the version.
```

## Test

As this tool is just a wrapper to the packaging tool functions, I didn't write any line of 'unit test' code. Sorry.

## Contributing

Thanks you for taking the time to contribute. Please fork the repository and make changes as you'd like.

As I use these scripts for my own projects, they contain only the features I need. But If you have any ideas, just open an [issue](https://github.com/ojullien/bash-updatesystem/issues/new/choose) and tell me what you think. Pull requests are also warmly welcome.

If you encounter any **bugs**, please open an [issue](https://github.com/ojullien/bash-updatesystem/issues/new/choose).

Be sure to include a title and clear description,as much relevant information as possible, and a code sample or an executable test case demonstrating the expected behavior that is not occurring.

## License

This project is open-source and is licensed under the [MIT License](LICENSE).
