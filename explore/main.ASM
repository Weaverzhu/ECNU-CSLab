data    segment
        assume ds:data

        org   0
start:  inl dr
        outl sr
        jmp start
data    ends
        end   start
