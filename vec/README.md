# VEC

The Model of the VEC can be found in the [models](./models)-directory.

## How to build and publish a new release of the VEC

### Release and Build XML Schema 

1. Checkout `main` branch of the VEC repository
1. Add a new literal to the _VecVersion_ enumeration in the model.
2. Create Schema & Ontology files for the new version
     
     1. Update the version in `pom.xml` (remove `-RC` or `-SNAPSHOT` suffix if present)
     2. Run `mvn clean install` 
     3. Test the generated schema files with an XML-Editor (e.g. Oxygen). [XSD](./target/xsd) and [RDF](./target/rdf) files are created in the `target`-directory.

2. Create the "VEC Full Documentation"

    1. Open MagicDraw with the VEC model
    2. Open the Report Wizard (from the MagicDraw menu: `Tools` -> `Reports` -> `Report Wizard`)
    3. Select the `VEC Full Documentation` and click `Next`
    4. Select the packages `VEC` and `Presentation` and click `Next`
    5. Select "Report Image Format" as `PNG` and a output file "VEC-Model-Documentation-VX.X.X.docx" and click `Next`
    6. Open the report result, change the title page to reflect the new version, refresh the index and save the file. 
    7. Export the report as PDF "VEC-Model-Documentation-VX.X.X.pdf"
    8. Open the previous version in word and make a Word Diff between the old and the new version. Save this as "VEC-Model-Documentation-VX.X.X-diff.docx"

3. Publish the release content in the WIKI:
    1. Create a new folder in the WIKI under `\wiki\content\specifications\vec` for the new version (e.g. `v201` for version `2.0.1`)
    2. Copy all XSD & RDF files (.xsd & .ttl) from the folders in `target` to the new folder.
    3. Copy the files created in the "VEC Full Documentation" step to the new folder.
    3. Create a new `properties`-File for the new version under `\wiki\reports` and modify `generate.cmd` according to the needs of local environment.
    4. Run `generate.cmd` (in `\wiki\reports`) to create the WIKI content for the new version.
    5. Delete the `\wiki\content\specifications\vec\vXXX\_index_files` folder.
    6. Copy `_index.md` and `release-notes.md` from the previous versions content directory. And open both. Update the `version`, `menu:`, `date:` and `title` value / key with the id of the current version (see below)
    7. Update the content of both files according to the new version.
    12. Goto `config\_default\params.toml` and change the values under `[VEC]` to the current version.
    13. Goto `content\home\vec.md` and change the links in front matter to the new version.

4. Commit and Push all changes to GIT
5. Create a tag vec-x.x.x in GIT for the new version.
6. Create a release in GitHub, add release notes and add a link to the Version in the ECAD WIKI.
7. Change the version in `pom.xml` to the next development version (e.g. `2.2.1-SNAPSHOT`)
15. Force a commit by changing the `date:` value of `content\specifications\vec\guidelines\_index.md` to the have implementation guidelines in first place of the listing.
17. Refresh the ontology redirects for https://ecad.prostep.org in the old gitlab.com ECAD-WIKI repository (https://gitlab.com/ecad-wiki/ecad-wiki.gitlab.io)
     
