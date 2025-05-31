## Release

After a new release of `repos`:

1. Update the version number in the `url` field in Repos.rb.
1. Run the following command to get the new SHA256 checksum:

```bash
shasum -a 256 ~/Downloads/repos-<version>.tar.gz
```

Copy the output to the sha256 field in Repos.rb.
