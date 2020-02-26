# Webservices

Programming Language: Dart

## Rules for Contribution

* Master Branch is locked, features and changes can only be developed in new feature branches
* After merging the branch is to be deleted.
* Features/Fixes and changes in general => Pull Request
* Pull Requests are not to be confirmed by the person that created them

## Architecture

### Business Logic

The business logic should be accessible via REST interfaces. The Interface descriptions can be found under [json-schemes](./json-schemes/)

### Image Database

A database for storing and extracting information related to the image labels and their storage path on the filesystem/cloud object storage

### Review Webpage

A dedicated review webpage for user uploads. Here a review admin can see all pictures that were handed in for review and decide if they are acceptable as training material.

### Data Export Service

A webservice that extracts the image information from the image database and converts it into the specified training format.

