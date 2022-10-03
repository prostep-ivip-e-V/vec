# VEC

Current nightly builds

* [vec_1.1.4-SNAPSHOT.xsd](https://ecad-if.gitlab.io/vec/xsd/vec_1.1.4-SNAPSHOT.xsd)
* [vec_1.1.4-strict-SNAPSHOT.xsd](https://ecad-if.gitlab.io/vec/xsd/vec_1.1.4-strict-SNAPSHOT.xsd)
* [vec_1.1.4-ud-SNAPSHOT.xsd](https://ecad-if.gitlab.io/vec/xsd/vec_1.1.4-ud-SNAPSHOT.xsd)
* [vec_1.1.4-ud-strict-SNAPSHOT.xsd](https://ecad-if.gitlab.io/vec/xsd/vec_1.1.4-ud-strict-SNAPSHOT.xsd)

## How to build and publish a new release of the VEC

### Release and Build XML Schema 

1. Add a new literal to the _VecVersion_ enumeration in the model.
2. Run `mvn clean install` on develop and XML Diff the `target\xsd\vec_?.?.?-strict-SNAPSHOT.xsd` with the most recent version to review changes in the schema. 
3. Commit all changes to GIT and run `mvn gitflow:release`
4. Checkout `master` of ECAD-WIKI Repository
5. Run `mvn clean install` to create release version schema files.
6. New schema files can be found under `target\xsd`

### Publish to ECAD WIKI

1. Checkout ECAD-WIKI, Create a feature-branch for the new version
1. Create a new `properties`-File for the new version under `\reports` and modify `generate.cmd` according to your needs.
6. Create output directory for the report (e.g. `ecad-wiki.git\content\specifications\vec\v201`) and run `generate.cmd` (in `\reports`)
7. Copy all schema files created in the release to the versions content directory (e.g. `ecad-wiki.git\content\specifications\vec\v201`).
8. Copy `_index.md` and `release-notes.md` from the previous versions content directory. And open both. Update the `version`, `menu:`, `date:` and `title` value / key with the id of the current version (see below)
9. Update the `links:` key in `_index.md` for the schema files and test if the links are reachable in the preview website.
10. Add meaning full content to `_index.md`
11. Take the release notes from JIRA 
  1. Check for completeness and English titles
  2. Copy them as Markdown and add them as content to `release-notes.md` and reformat similar to previous versions. 
12. Goto `config\_default\params.toml` and change the values under `[VEC]` to the current version.
13. Goto `content\home\vec.md` and change the links in front matter to the new version.
14. Commit, Push, Review and Merge your feature branch.
15. Force a commit by changing the `date:` value of `content\specifications\vec\guidelines\_index.md` to the have implementation guidelines in first place of the listing.
16. Release the Version in JIRA and close all issues associated with the version. 


```yaml
...
version: 2.0.0
menu:
  vec-2.0.0:
...  
```


