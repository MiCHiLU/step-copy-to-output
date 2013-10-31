# copy-to-output

Used to filter specific files and directories that aren't needed in the deploy phase.

[![wercker status](https://app.wercker.com/status/8eee3829aac61e400ace6a884ca6dfcb/m "wercker status")](https://app.wercker.com/project/bykey/8eee3829aac61e400ace6a884ca6dfcb)

# What's new

- Use $PWD instead of $WERCKER_ROOT

# Options

* `exclude` (required) Files or directories to exclude

# Example

Exclude git directory

```
- build:
    - steps:
        - copy-to-ouput:
            exclude: .git
```


# License

The MIT License (MIT)

# Changelog

## 0.0.5

- Use $PWD instead of $WERCKER_ROOT

## 0.0.4

- Initial release
