# Docker container from ShellCheck

[Checkout ShellCheck](https://github.com/koalaman/shellcheck)

## Usage

```shell
docker run -i --rm \
    -v "$(pwd)":/workdir \
    --name [name] \
    gruen\shellcheck file_to_check [options]
```

The command above will lint ```file_to_check``` within the current directory

## Text Editor Linters

You can use a docker container to lint files within editors.

For example, with atom-linter and linter-shellcheck create a file called
```shellcheck``` inside your ```$PATH``` with the following. _(be sure
to make the file executable)_

```shell
#!/usr/bin/env bash

docker run -i --rm \
    -v "$(pwd)":/workdir \
    --name shellcheck"$(date +%H%M%S)" \
    gruen\shellcheck
```

__NOTICE__ the ```name``` parameter, it uses ```"$(date +%H%M%S)"``` to append
a timestamp. This should avoid conflicts when your editor invokes the linter
several times within a very short period
