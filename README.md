# leane
Lean examples
 * https://lean-lang.org/
 * https://lean-lang.org/functional_programming_in_lean
# Install
wrapper winget installation 
Using shortcuts installs toolchain
```
C:\Users\simon\github\leane [main ≡]>  winget install --id Lean.Elan -e
Found Elan [Lean.Elan] Version 4.4.0
This application is licensed to you by its owner.
Microsoft is not responsible for, nor does it grant any licenses to, third-party packages.
Downloading https://github.com/leanprover/elan/releases/download/v4.4.0/elan-x86_64-pc-windows-msvc.zip
  ██████████████████████████████  2.47 MB / 2.47 MB
Successfully verified installer hash
Extracting archive...
Successfully extracted archive
Starting package install...
Command line alias added: "elan"
Command line alias added: "lake"
Command line alias added: "lean"
Command line alias added: "leanc"
Command line alias added: "leanchecker"
Command line alias added: "leanmake"
Command line alias added: "leanpkg"
Successfully installed
C:\Users\simon\github\leane [main ≡]> elan --version
elan 4.4.0 (3cc76985a 2026-11-18)
C:\Users\simon\github\leane [main ≡]> lake --version
info: downloading https://releases.lean-lang.org/lean4/v4.36.0/lean-4.36.0-windows.tar.zst
587.4 MiB / 587.4 MiB (100 %)  20.4 MiB/s ETA:   0 s
info: installing C:\Users\simon\.elan\toolchains\leanprover--lean4---v4.36.0
Lake version 5.0.0-src+611c117 (Lean version 4.36.0)
C:\Users\simon\github\leane [main ≡]> lean --version
Lean (version 4.36.0, x86_64-w64-windows-gnu, commit 611c117bfaf7b7ae1cfcf246ce6fba31e8f509e9, Release)
C:\Users\simon\github\leane [main ≡]> leanc --version
clang version 23.1.1
Target: x86_64-w64-windows-gnu
Thread model: posix
InstalledDir: C:/Users/simon/.elan/toolchains/leanprover--lean4---v4.36.0/bin
```
Testing toolchain
```
C:\Users\simon\github\leane [main ≡ +1 ~0 -0 !]> git add learn
C:\Users\simon\github\leane [main ≡ +8 ~0 -0 ~]> git status
On branch main
Your branch is up to date with 'origin/main'.

Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        new file:   learn/.github/workflows/lean_action_ci.yml
        new file:   learn/.gitignore
        new file:   learn/Learn.lean
        new file:   learn/Learn/Basic.lean
        new file:   learn/Main.lean
        new file:   learn/README.md
        new file:   learn/lakefile.toml
        new file:   learn/lean-toolchain

C:\Users\simon\github\leane [main ≡ +8 ~0 -0 ~]> cd .\learn\
C:\Users\simon\github\leane\learn [main ≡ +8 ~0 -0 ~]> lake build
info: learn: no previous manifest, creating one from scratch
info: toolchain not updated; already up-to-date
Build completed successfully (11 jobs).

C:\Users\simon\github\leane\learn [main ≡ +8 ~0 -0 | +1 ~0 -0 !]> echo 'def main : IO Unit := IO.println "Hello, world!"' >Hello.lean
C:\Users\simon\github\leane\learn [main ≡ +8 ~0 -0 | +2 ~0 -0 !]> lean --run Hello.lean
Hello, world!
C:\Users\simon\github\leane\learn [main ≡ +8 ~0 -0 | +2 ~0 -0 !]> git add -A
```


