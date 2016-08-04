#Docker container from ShellCheck

[Checkout ShellCheck](https://github.com/koalaman/shellcheck)

##Usage

```shell
docker run -i --rm \
    -v "$(pwd)":/workdir \
    --name shellcheck"$(date +%H%M%S)" \
    gruen\shellcheck [options]
```
