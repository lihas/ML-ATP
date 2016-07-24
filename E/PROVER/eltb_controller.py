#!/usr/bin/env python2.7

import os

fpi,fpo = os.popen2("e_ltb_runner EBatchConfig.txt --interactive", "rw")

print fpi, fpo

fpi.write("""
fof(conjecture1,conjecture, ( ( ? [V__X] : s__subclass(V__X,s__Object) ) )).

go.

job Test2.
fof(conjecture1,conjecture, ( ( ? [V__X] :
                            s__subclass(V__X,s__Object)|
                            s__subclass(s__Artifact,s__Object)))).
go.

job Test3.
fof(conjecture1,conjecture, ( ( ? [V__X] :
                            s__subclass(V__X,s__Object)&
                            s__subclass(s__Artifact,s__Object)))).
go.


quit
go.
""")

fpi.flush()

print "Result"

while True:
    res = fpo.read()
    if not res:
        break
    print res
    
