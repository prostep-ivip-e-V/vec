# VEC

Current nightly builds

* [vec_1.1.4-SNAPSHOT.xsd](https://ecad-if.gitlab.io/vec/xsd/vec_1.1.4-SNAPSHOT.xsd)
* [vec_1.1.4-strict-SNAPSHOT.xsd](https://ecad-if.gitlab.io/vec/xsd/vec_1.1.4-strict-SNAPSHOT.xsd)
* [vec_1.1.4-ud-SNAPSHOT.xsd](https://ecad-if.gitlab.io/vec/xsd/vec_1.1.4-ud-SNAPSHOT.xsd)
* [vec_1.1.4-ud-strict-SNAPSHOT.xsd](https://ecad-if.gitlab.io/vec/xsd/vec_1.1.4-ud-strict-SNAPSHOT.xsd)

## How to build and publish a new release of the VEC

1. Add a new literal to the _VecVersion_ enumeration in the model.
2. Run `mvn clean install` on develop and XML Diff the `target\xsd\vec_?.?.?-strict-SNAPSHOT.xsd` with the most recent version to review changes in the schema. 
3. Commit all changes to GIT and run `mvn gitflow:release`