- story.asm : loop with macros instead of copy paste ?
  - episodes_X.asm : do we need two EOF at the end of each dialog ?

- Use the C preprocessor to generate stuff that we will then pass to armips ?
- Cross platform scripting language, python ? go (this could be a good
  opportunity to lean go actually provided it is easy to run on windows) ?

- Can we use something else than armips that is more readily available ?
  Ideally I would like to not have to compile my own compiler.
  - What was the reasoning behind taking armips ? Was the author familiar with
	it ?

- Generate translation based on a txt file instead of putting everything in a
  .asm file
	- That way we can support more than one language at a time

- How does encoding works ?
  - IE what happens if I want to put an é in the translation ?
  - The encoding used is called Shift_JIS:
    - Can we put everything we want using Shift_JIS ?
	- Do we need to change the encoding ?

- Translation notes:
  - use english names ? from the anime ? Do we localize ?
  - The current iteration is a very rough draft, we need at least one more pass
	to fix the tense issue and then one more to make it less-bad.

- Fix typos
- Translation left to do :
  - Intro screen
  - Menus (text on the bottom of the screen)
  - Option Menu splash screen
  - Pilotes profiles
  - Editor menu and actual editor
  - Story 22/51 done
  - Tutorial

- Rework the documentation, for example document the profiles according to the
  assembly code.

- Use MGBDIS to better document the rom.

- It would be nice to have more comments in `variableWidthFont.asm`.
- What is `halfWifthFont.asm` and why is it not assembled/used ?

- Why is misc.asm mostly commented out ?

- Could we generate title/controls from text ?

- In the menu, it seems that there is a pixel shift of 1, it is very noticeable
  on the grand prix and editor menu. Is it an emulation bug ? (Check on real
  hardware) It is present in both the japanese version and the translated
  version.

- Write the current translated stuff in the new format.
