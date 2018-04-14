`bib`
=====

`bib` is a library and set of interfaces for managing bibliographies.
With a particular focus towards generating BibTeX files from a single
library, it also provides convenient mechanisms for automatically
filing documents in the file system; searching, sorting, and filtering
references; and importing existing BibTeX files to grow the library.

`bib` maintains libraries, which are collections of references and
projects. The library holds all the references in a single structure,
while projects are collections of references. References can belong to
any number of projects, including none.

Users are able to maintain multiple libraries, however there is no
communication between them. Most users will maintain a single library.

Projects are the main way users export references to BibTeX files. A
project might be a single paper, where you tag references as being
related to this paper; `bib` will keep the project's BibTeX file in
sync with the additions and removals from a given project.

Building `bib`
--------------

Although `bib` is nominally written in Standard ML, the Standard ML is
written in a literate manner, meaning we need to compile the `.nw`
(NoWeb) source into Standard ML first, then compile the Standard
ML. Assuming a working installation of `noweb` and `mlton`, the
included Makefile should be sufficient to build `bib`.

Roadmap
-------

`bib` is currently in early development, meaning it is in the v0.x.x
development phase. As features are completed, we will progress through
versions. The v0.x.x stages are unstable: there might be breaking
changes at any time. Once in v1.0.0, within a major version number
`bib` updates will be non-compatibility-breaking.

### v1.0.0

The initial stages for `bib` will be the back-end, along with a
minimal REPL interface. The back-end will be considered 'ready' when
the following features have been included:

 - Read/write own library format
 - Import BibTeX files
 - Synchronise BibTeX project files
 - Automatically file resources (e.g., PDFs)
 - Cite key generation

### v1.1.0

 - Sorting by field
 - Filtering by field
 - Searching
 - DOI links (if present)

### v1.2.0

 - TUI interface
