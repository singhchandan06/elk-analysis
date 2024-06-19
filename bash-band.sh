#!/bin/bash
# This bash  script written by chandan
# element project band structure using the Elk code
# it is for ZnV2O4 with 2 Zn atoms, 4 V atoms and 8 O atoms.
paste BAND_S01_A0001.OUT BAND_S01_A0002.OUT | awk '{print $1, $2, ($3+$7),($4+$8)}'>Zn-band.dat

paste BAND_S02_A0001.OUT BAND_S02_A0002.OUT BAND_S02_A0003.OUT BAND_S02_A0004.OUT | awk '{print $1, $2, ($3+$7+$11+$15),($4+$8+$12+$16)}'>V-band.dat

paste BAND_S03_A0001.OUT BAND_S03_A0002.OUT BAND_S03_A0003.OUT BAND_S03_A0004.OUT BAND_S03_A0005.OUT BAND_S03_A0006.OUT BAND_S03_A0007.OUT BAND_S03_A0008.OUT | awk '{print $1, $2, ($3+$7+$11+$15+$19+$23+$27+$31),($4+$8+$12+$16+$20+$24+$28+$32)}'>O-band.dat

head -n18281 Zn-band.dat >Zn-band-up.dat
head -n36561 Zn-band.dat|tail -n18281 >Zn-band-dn.dat
head -n18281 V-band.dat >V-band-up.dat
head -n36561 V-band.dat|tail -n18281 >V-band-dn.dat
head -n18281 O-band.dat >O-band-up.dat
head -n36561 O-band.dat|tail -n18281 >O-band-dn.dat

rm Zn-band.dat V-band.dat O-band.dat
