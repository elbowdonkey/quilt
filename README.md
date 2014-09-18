
Michael
  has *Frames* (just one for now, but maybe more)
    *Frames*
      another word for quilt, but not quilt because that's the name of the app silly.
      have **Patches**
      have a width and height of patches
      have settings that inform the pixel width and height of patches
      have settings that inform how many layers, and of what kind, for each patch

      **Patches**
        belong to a **Frame**
        belong to an **Artist**
        have **Pixels**
        have unique to the quilt x and y coordinates
          which are assigned randomly
        have **Layers**

        **Layers**
          have pixels
          are of a certain type governing pixel editing behavior like:
            add/remove any pixel
            change pixels from a specific color (like white) to another single color
            rainbow-animate-ify a pixel's SUPER SPECIAL COLOR that's defined at the **Frame level**

          **Pixels**
            are created
              at a specific time
              with rgba values
              at x y coordinates
              by an **Artist**
            belong to
              an **Artist**
              a Patch
            are never updated
            are never deleted

          **Artists**
            have **Pixels**
            have **Patches**

0. A **Frame** is made by Michael, who is just the first **Artist**
0. When the first **Artist** visits the **Frame's** URL for the first time a Patch is created
0. New patches get their first Layer, the kind of Layer being determined by the **Frame's** "layer order" settings
0. The Patch can have pixels added, but only in ways that their Layer will allow
