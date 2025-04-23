# Documentation Site Documentation

**Author:** Nick Miller

This site was generated with [MkDocs](https://www.mkdocs.org), an open-source Python library for generating static documentation sites. It is hosted on GitHub Pages.

Creation/implementation of the site was handled by Nick Miller. The documentation itself was written by all team members.

MarkDown documents were written/formatted in VS Code with the markdownlint extension for consistency.

## Preparation

Our documentation was originally written in Microsoft Word in Office 365. This caused a few problems.

1. The original directory structure was difficult and slow to navigate.
2. Team members will not have access to the Microsoft group after graduation.
3. Access required manual addition to the group.
4. The documents were not standardized by format or content.

We decided to create this site in response to those issues. It is a fast, organized way to read our documentation.

### Conversions

To convert our .docx files to .md, I used [Pandoc](https://pandoc.org/), a CLI tool that can convert between practically any document types. Future updates and additions to this documentation should start with MarkDown documents. For posterity, here's how I converted things.

1. First, [install Pandoc](https://pandoc.org/installing.html). I got it from the Ubuntu repository.
2. In your terminal, cd to the folder of your .docx file(s).
3. Now we'll run Pandoc:

```console
pandoc --from docx --to markdown -o <filename>.md <filename>
```

The command above calls Pandoc, tells it to convert from .docx to .md, gives the destination file as \<filename\>.md, and tells it which file to convert.

Note that this will look different in use. Say we have a file named servertest.docx to convert:

```console
pandoc --from docx --to markdown -o servertest.md servertest.docx
```

## Theme

The site uses MkDoc's built-in theme ReadTheDocs, a clone of ReadTheDocs' layout. This theme was selected for readability in comparison to the default theme and ease of installation as a built-in theme. Material for MkDocs was also considered, but I wanted to avoid an unneccessary step for future maintainers.

# Updating the Site

*This section assumes that you have commit access to the site repository in the Cloudgineers GitHub organization.*

Ensure that Python and Pip are installed on your system. Install MkDocs with Pip.

Clone the GitHub repository and edit the documentation in your editor of choice.

When it's time to deploy your updates, open a terminal in the root folder of the repository.

Run the MkDocs command gh-deploy and MkDocs will commit your changes to the repository, rebuild the site, and redeploy the site using a Github Action. That's all you need to do!

```console
pip install mkdocs

# Clone and edit as desired...

# Navigate to the repo directory
# cd ~/your/computer/documentationSite for example

# Run gh-deploy
mkdocs gh-deploy
```

[MkDocs Page on Deploying Docs](https://www.mkdocs.org/user-guide/deploying-your-docs/)