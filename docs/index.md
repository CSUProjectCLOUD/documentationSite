# Project CLOUD Documentation

This site is the documentation for Project CLOUD, a project aiming to create a private cloud for use by computer science students at Columbus State University.

## Documentation TODOs

- Structure site directory
- Format specs document
- Fix formatting for all documents (Specifics in TOC todo)
- Link documents in Table of Contents
- Set up GitHub Action for deploying site
- Finish writing stuff (specifics in TOC todo)

## Documentation Scope

The documentation hosted here will cover *only* the engineering/deployment of the cloud. Other documents created over the course of development, such as Agile reports or assigned papers, are available through the CDG Teams group.

Potentially, information from Agile reports could be condensed into a page or two for future reference here. I personally don't have time for that.

## Commands

- `mkdocs new [dir-name]` - Create a new project.
- `mkdocs serve` - Start the live-reloading docs server.
- `mkdocs build` - Build the documentation site.
- `mkdocs -h` - Print help message and exit.

## Project layout

    mkdocs.yml    # The configuration file.
    docs/
        index.md  # The documentation homepage.
        ...       # Other markdown pages, images and other files.
