## Release

After a new release of `repos`:

1. Update the version number in the `url` field in Repos.rb.
1. Run the following command to get the new SHA256 checksum:

```bash
shasum -a 256 ~/Downloads/repos-<version>.tar.gz
```

Copy the output to the sha256 field in Repos.rb.

Update resources in `rb` file:

```bash
brew update-python-resources --print-only ./formula.rb
```

## Verify

To verify if formula is correct before submitting:

1. Check the formula syntax:

```bash
brew audit --formula --strict --tap codcod/taps
```

2. Install the formula locally:

```bash
brew install --formula --build-from-source ./formula.rb
```

3. Test the installed tool:

```bash
formula --help
```

4. Uninstall after testing

```bash
brew uninstall formula
```
