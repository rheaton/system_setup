# system_setup

A small repo to assist with postgres and other software development


Add to bash profile: 

```bash
export PATH=$HOME/workspace/system_setup/exec:$PATH
source $HOME/workspace/system_setup/lib/aliases.bash
```


Usage:

```bash
git worktree add worktree-pg-branch
worktree pg-branch
src
```

---

## Postgres Notes

### Configuring & Compiling

Run `./configure --help` to see the configuration options for postgres. 
For example, if you want to run any tap tests, you must use the `--enable-tap-tests` flag.

The `--prefix` flag is the location for the artifacts, so if you want to easily run them for development you would add that to your PATH.

`make distclean` will remove all the configure options, i.e. config.cache. 
Options are available for view with `config.status --config`. 

`make -j<number of cores>` to speed up compilation.

### Types of tests

#### TAP tests
These are written in perl, using the [prove](https://perldoc.perl.org/prove) framework.
They output in a the [TAP](https://en.wikipedia.org/wiki/Test_Anything_Protocol) format.
Any folder with a `t` folder has these tests. 
Test output is located  in the `tmpcheck` folder.

To run the pg_dump tests, after , for example:
``

#### Regress tests
Simple SQL tests that do exact text matching on the output of the queries

#### Isolation tests
Testing for parallelism with a special syntax




*Random notes:*

`make install DESTDIR=/tmp/mybin` will copy the compiled binaries to DESTDIR

Autoconf is used to create the Makefiles