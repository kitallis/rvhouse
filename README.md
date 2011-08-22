_This is a git fork of the SVN [repository] of the centralized internet lobby application for the online RC racing game Re-Volt._
_The structure generated by svneverever for the repository can be found [here]_

- - -

The source is licensed fully under GPL.
See LICENSE for details.

To build:

copy `build_config.py.dist` to `build_config.py` and edit the file
to have correct paths etc. for your system.

Release build:  
`$ scons`

Debug build:  
`$ scons debug=yes`

For building [scons] is needed.
Stand-alone Windows build is also [available].


For building Qt (Qt 4.7.2 used, later versions may work also):

 - On Linux:
   
> `$ ./configure.exe -prefix=<path to where to install qt> -static -no-sql-sqlite -no-sql-sqlite2 -no-sql-sqlite_symbian`  
> `$ make`
   
 - On Windows with MinGW:
   
> `$ export QTDIR=<path to extracted qt directory>/`  
> `$ export PATH=${PATH}:${QTDIR}`  
> `$ export QMAKESPEC=$QTDIR/mkspecs/win32-g++`  
> `$ ./configure.exe -prefix=<path to where to install qt> -static -release`  
> `$ mingw32-make`
   
Under windows, you also need to build `resource.o` to the
src directory from `resource.rc` & `resource.h`. If you are
unsure how to do that, contact me.

When built, you can create an installation executable with
Inno Setup using `install/installer.iss` script.

For needed libraries and other installation details, also [see].


Arto Jalkanen  
ajalkane@gmail.com

  [scons]: http://www.scons.org/
  [available]: https://developer.berlios.de/project/showfiles.php?group_id=2672
  [see]: http://rvhouse.zackattackgames.com/index.php?section=sources
  [repository]: http://sourceforge.net/projects/rvhouse/
  [here]: http://ompldr.org/vYTBhMQ
