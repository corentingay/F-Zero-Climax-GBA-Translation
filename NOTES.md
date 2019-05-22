Notes regarding the assembly generation related to the translation:
  - We need to place newlines by hand, otherwise the text goes out of the text
	box and does weird shit.
  - In the assembly files for profiles, we add an extra null byte at the end, we
    don't need it as we are using .sjis.

Steps to generate the translation :
- Break the text into lines, the length of a line probably depends on what the
  text is for : pilote profile, vehicle profile, story, etc...
