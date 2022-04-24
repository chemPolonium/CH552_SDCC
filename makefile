vpath %.c src
vpath %.ihx tmp
vpath %.hex bin

cname=CompositeKM

# sdcc -c foo1.c
# sdcc -c foo2.c
# sdcc foomain.c foo1.rel foo2.rel

$(cname).hex : $(cname).ihx
	packihx tmp/$(cname).ihx > bin/$(cname).hex

$(cname).ihx : $(cname).c
	sdcc src/$(cname).c -mmcs51 -o tmp/$(cname).ihx

debug :
	copy src\$(cname).c tmp\$(cname).c
	sdcc src/$(cname).c -mmcs51 --debug -o tmp/$(cname).ihx

.PHONY: clean
clean :
	del /Q tmp\*.*