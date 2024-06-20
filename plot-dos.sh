#!/bin/bash
# due to moment on V have negtive sign, spin-up and spin-dn definition is reversed here.
gnuplot gnuplot-pdos.sh
#gnuplot gnuplot-band-dos.sh
ps2pdf pdos.eps
#ps2pdf band-dos.eps
open pdos.pdf
#open band-dos.pdf
