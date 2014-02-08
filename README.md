Email tool for TinkerSoc
=====

# Template #

`{{markdown}}` is replaced with the plaintext version of the markdown,
this is for the text-only part of the email (eg for command line email
users).

`{{html}}` is replaced with the HTML generated from the markdown, for
rich emails.


# Dependencies #

1. pandoc
2. mailx


# Usage #

```
./emailMarkdown.sh <markdown> <template> | mailx -s "SUBJECT" -a \
    "Content-Type: multipart/alternative; boundary=mimeboundary" reciptient@domain.tld
```
