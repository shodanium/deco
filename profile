.menu .deco .cshrc .login *.c *.h *.cpp *.C
	vi %f

*.b
	rm %f

Makefile makefile *.mk
	make -f %f

core
	adb

*.o
	nm %f | less

*.a
	ar tv %f | less

*.tar
	tar -tvf %f | less

*.tar.gz *.tgz
	gzip -d -c %f | tar -tvf - | less

*.rpm
	rpm2cpio %f | cpio -t | less
