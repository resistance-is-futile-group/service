# Webservices

Programming Language: Dart

## Rules for Contribution

Please read [here](./CONTRIBUTING.md)

## Architecture

### Business Logic

The business logic should be accessible via REST interfaces. The Interface descriptions can be found under [json-schemes](./json-schemes/) [1]

A tool to help create json-schemes can be found under [2]

### Image Database

A database for storing and extracting information related to the image labels and their storage path on the filesystem/cloud object storage

### Review Webpage

A dedicated review webpage for user uploads. Here a review admin can see all pictures that were handed in for review and decide if they are acceptable as training material.

### Data Export Service

A webservice that extracts the image information from the image database and converts it into the specified training format.



# Sources

[1] "Getting Started Step-By-Step" - json-schema.org accessed, 04/03/2020, [online](https://json-schema.org/learn/getting-started-step-by-step.html)

[2] "JSONschema.net Tool" - accessed, 04/03/2020, [online](https://jsonschema.net/home)

