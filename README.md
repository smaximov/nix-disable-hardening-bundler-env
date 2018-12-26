Bootstrap `gemset.nix`:

``` bash
$ nix-shell bootstrap.nix --run 'bundix --magic'
```

Drop into the shell (fails because of hardening):

```
$ nix-shell
these derivations will be built:
  /nix/store/a9bj2ra8gxfjs81s677l5w4zlra9vxck-ruby2.5.3-digest-sha3-1.1.0.drv
  /nix/store/swzh9vxf58hn5n46i25kd8lbw1ih491k-app-gems.drv
building '/nix/store/a9bj2ra8gxfjs81s677l5w4zlra9vxck-ruby2.5.3-digest-sha3-1.1.0.drv'...
unpacking sources
patching sources
configuring
no configure script, doing nothing
installing
buildFlags:
WARNING:  You build with buildroot.
  Build root: /
  Bin dir: /nix/store/lsb3sdrlbw199vyxr12q4f3y7zbddg27-ruby2.5.3-digest-sha3-1.1.0/lib/ruby/gems/2.5.0/bin
  Gem home: /nix/store/lsb3sdrlbw199vyxr12q4f3y7zbddg27-ruby2.5.3-digest-sha3-1.1.0/lib/ruby/gems/2.5.0
Building native extensions. This could take a while...
ERROR:  Error installing /nix/store/rggff4z8bj9723xd978l5c6y5ifwip05-digest-sha3-1.1.0.gem:
        ERROR: Failed to build gem native extension.

    current directory: /nix/store/lsb3sdrlbw199vyxr12q4f3y7zbddg27-ruby2.5.3-digest-sha3-1.1.0/lib/ruby/gems/2.5.0/gems/digest-sha3-1.1.0/ext/digest
/nix/store/r7dapysmfxkw3lw7cjz7zzxzv7c9hy06-ruby-2.5.3/bin/ruby -r ./siteconf20181226-29307-h49f2a.rb extconf.rb
checking for ruby/digest.h... yes
checking for rb_str_set_len()... yes
creating Makefile

current directory: /nix/store/lsb3sdrlbw199vyxr12q4f3y7zbddg27-ruby2.5.3-digest-sha3-1.1.0/lib/ruby/gems/2.5.0/gems/digest-sha3-1.1.0/ext/digest
make "DESTDIR=" clean

current directory: /nix/store/lsb3sdrlbw199vyxr12q4f3y7zbddg27-ruby2.5.3-digest-sha3-1.1.0/lib/ruby/gems/2.5.0/gems/digest-sha3-1.1.0/ext/digest
make "DESTDIR="
compiling KeccakF-1600-reference.c
compiling KeccakNISTInterface.c
compiling KeccakSponge.c
compiling displayIntermediateValues.c
displayIntermediateValues.c:113:40: error: format string is not a string literal (potentially insecure) [-Werror,-Wformat-security]
        fprintf(intermediateValueFile, text);
                                       ^~~~
displayIntermediateValues.c:113:40: note: treat the string as an argument to avoid this
        fprintf(intermediateValueFile, text);
                                       ^
                                       "%s",
1 error generated.
make: *** [Makefile:242: displayIntermediateValues.o] Error 1

make failed, exit code 2

Gem files will remain installed in /nix/store/lsb3sdrlbw199vyxr12q4f3y7zbddg27-ruby2.5.3-digest-sha3-1.1.0/lib/ruby/gems/2.5.0/gems/digest-sha3-1.1.0 for inspection.
Results logged to /nix/store/lsb3sdrlbw199vyxr12q4f3y7zbddg27-ruby2.5.3-digest-sha3-1.1.0/lib/ruby/gems/2.5.0/extensions/x86_64-darwin-17/2.5.0/digest-sha3-1.1.0/gem_make.out
builder for '/nix/store/a9bj2ra8gxfjs81s677l5w4zlra9vxck-ruby2.5.3-digest-sha3-1.1.0.drv' failed with exit code 1
cannot build derivation '/nix/store/swzh9vxf58hn5n46i25kd8lbw1ih491k-app-gems.drv': 1 dependencies couldn't be built
error: build of '/nix/store/swzh9vxf58hn5n46i25kd8lbw1ih491k-app-gems.drv' failed
```
