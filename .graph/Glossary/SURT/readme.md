SURT
SURT stands for Sort-friendly URI Reordering Transform, and is a transformation applied to URIs which makes their left-to-right representation better match the natural hierarchy of domain names.

A URI <scheme://domain.tld/path?query> has SURT form <scheme://(tld,domain,)/path?query>.

Conversion to SURT form also involves making all characters lowercase, and changing the 'https' scheme to 'http'. Further, the '/' after a URI authority component -- for example, the third slash in a regular HTTP URI -- will only appear in the SURT form if it appeared in the plain URI form. (This convention proves important when using real URIs as a shorthand for SURT prefixes, as described below.)

SURT form URIs are typically not used to specify exact URIs for fetching. Rather, SURT form is useful when comparing or sorting URIs. For example, URIs in SURT format sort into natural groups -- all 'archive.org' URIs will be adjacent, regardless of what subdomains like 'books.archive.org' or 'movies.archive.org' are used.

Most importantly, a SURT form URI, or a truncated version of a SURT form URI, can be used as a SURT prefix. A SURT prefix will often correspond to all URIs within a common 'area' of interest for crawling. For example, the prefix <http://(is,> will be shared by all URIs in the '.is' top-level domain.

SURT prefix
A URI in SURT form, especially if truncated, may be of use as a "SURT prefix", a shared prefix string of all SURT form URIs in the same 'area' of interest for web crawling.

For example, the prefix <http://(is,> will be shared by all SURT form URIs in the '.is' top-level domain. The prefix <http://(org,archive,www,)/movies> (which is also a valid full SURT form URI) will be shared by all URIs at www.archive.org with a path beginning '/movies'.

A collection of sorted SURT prefixes is an efficient way to specify a desired crawl scope: any URI whose SURT form starts with any of the prefixes should be included.

A small set of conventions can be also be used to calculate an "implied SURT prefix" from a regular URI, such as a URI supplied as a crawl seed. These conventions are:

Convert the URI to its SURT form.

If there are at least 3 slashes ('/') in the SURT form, remove everything after the last slash. As examples, <http://(org,example,www,)/main/subsection/> is unchanged; <http://(org,example,www,)/main/subsection> is truncated to <http://(org,example,www,)/main/>; <http://(org,example,www,)/> is unchanged; and <http://(org,example,www,)> is unchanged.

If the resulting form ends in an off-parenthesis (')'), remove the off-parenthesis. So each of the above examples except for the last is unchanged, while the last <http://(org,example,www,)> becomes <http://(org,example,www,>.

This allows many seed URIs, in their usual form, to imply the most useful SURT prefixes for crawling related URIs -- with the presence or absence of a trailing '/' on URIs without further path-info being a subtle indicator as to whether subdomains of the supplied domain should be included.

For example, seed <http://www.archive.org/> will become SURT form and implied SURT prefix <http://(org,archive,www,)/>, and is the prefix of all SURT form URIs on www.archive.org. However, any subdomain URI like <http://homepages.www.archive.org/directory> would be ruled out, because its SURT form <http://(org,archive,www,homepages,)/directory> does not begin with the full SURT prefix, including the ')/', deduced from the seed.

In contrast, seed <http://www.archive.org> (note the lack of trailing slash) will become SURT form <http://(org,archive,www,)>, and implied SURT prefix <http://(org,archive,www,> (note the lack of trailing ')'). This will be the prefix of all URIs on www.archive.org, as well as any subdomain URIs like <http://homepages.www.archive.org/directory>, because the full SURT prefix appears in subdomain URI SURT forms.
