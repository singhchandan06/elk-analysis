#!/bin/bash
blocks2columns.py PDOS_S01_A0001.OUT
paste PDOS_S01_A0001.OUT.columns |awk '{print $1, ($2+$3+$4+$5+$6+$7+$8+$9+$10+$11+$12+$13+$14+$15+$16+$17), ($18+$19+$20+$21+$22+$23+$24+$25+$26+$27+$28+$29+$30+$31+$32+$33)}'>file-Zn1.dat
blocks2columns.py PDOS_S01_A0002.OUT
paste PDOS_S01_A0002.OUT.columns |awk '{print $1, ($2+$3+$4+$5+$6+$7+$8+$9+$10+$11+$12+$13+$14+$15+$16+$17), ($18+$19+$20+$21+$22+$23+$24+$25+$26+$27+$28+$29+$30+$31+$32+$33)}'>file-Zn2.dat
blocks2columns.py PDOS_S02_A0001.OUT
paste PDOS_S02_A0001.OUT.columns |awk '{print $1, ($2+$3+$4+$5+$6+$7+$8+$9+$10+$11+$12+$13+$14+$15+$16+$17), ($18+$19+$20+$21+$22+$23+$24+$25+$26+$27+$28+$29+$30+$31+$32+$33)}'>file-V1.dat
blocks2columns.py PDOS_S02_A0002.OUT
paste PDOS_S02_A0002.OUT.columns |awk '{print $1, ($2+$3+$4+$5+$6+$7+$8+$9+$10+$11+$12+$13+$14+$15+$16+$17), ($18+$19+$20+$21+$22+$23+$24+$25+$26+$27+$28+$29+$30+$31+$32+$33)}'>file-V2.dat
blocks2columns.py PDOS_S02_A0003.OUT
paste PDOS_S02_A0003.OUT.columns |awk '{print $1, ($2+$3+$4+$5+$6+$7+$8+$9+$10+$11+$12+$13+$14+$15+$16+$17), ($18+$19+$20+$21+$22+$23+$24+$25+$26+$27+$28+$29+$30+$31+$32+$33)}'>file-V3.dat
blocks2columns.py PDOS_S02_A0004.OUT
paste PDOS_S02_A0004.OUT.columns |awk '{print $1, ($2+$3+$4+$5+$6+$7+$8+$9+$10+$11+$12+$13+$14+$15+$16+$17), ($18+$19+$20+$21+$22+$23+$24+$25+$26+$27+$28+$29+$30+$31+$32+$33)}'>file-V4.dat
blocks2columns.py PDOS_S03_A0001.OUT
paste PDOS_S03_A0001.OUT.columns |awk '{print $1, ($2+$3+$4+$5+$6+$7+$8+$9+$10+$11+$12+$13+$14+$15+$16+$17), ($18+$19+$20+$21+$22+$23+$24+$25+$26+$27+$28+$29+$30+$31+$32+$33)}'>file-O1.dat
blocks2columns.py PDOS_S03_A0002.OUT
paste PDOS_S03_A0002.OUT.columns |awk '{print $1, ($2+$3+$4+$5+$6+$7+$8+$9+$10+$11+$12+$13+$14+$15+$16+$17), ($18+$19+$20+$21+$22+$23+$24+$25+$26+$27+$28+$29+$30+$31+$32+$33)}'>file-O2.dat
blocks2columns.py PDOS_S03_A0003.OUT
paste PDOS_S03_A0003.OUT.columns |awk '{print $1, ($2+$3+$4+$5+$6+$7+$8+$9+$10+$11+$12+$13+$14+$15+$16+$17), ($18+$19+$20+$21+$22+$23+$24+$25+$26+$27+$28+$29+$30+$31+$32+$33)}'>file-O3.dat
blocks2columns.py PDOS_S03_A0004.OUT
paste PDOS_S03_A0004.OUT.columns |awk '{print $1, ($2+$3+$4+$5+$6+$7+$8+$9+$10+$11+$12+$13+$14+$15+$16+$17), ($18+$19+$20+$21+$22+$23+$24+$25+$26+$27+$28+$29+$30+$31+$32+$33)}'>file-O4.dat
blocks2columns.py PDOS_S03_A0005.OUT
paste PDOS_S03_A0005.OUT.columns |awk '{print $1, ($2+$3+$4+$5+$6+$7+$8+$9+$10+$11+$12+$13+$14+$15+$16+$17), ($18+$19+$20+$21+$22+$23+$24+$25+$26+$27+$28+$29+$30+$31+$32+$33)}'>file-O5.dat
blocks2columns.py PDOS_S03_A0006.OUT
paste PDOS_S03_A0006.OUT.columns |awk '{print $1, ($2+$3+$4+$5+$6+$7+$8+$9+$10+$11+$12+$13+$14+$15+$16+$17), ($18+$19+$20+$21+$22+$23+$24+$25+$26+$27+$28+$29+$30+$31+$32+$33)}'>file-O6.dat
blocks2columns.py PDOS_S03_A0007.OUT
paste PDOS_S03_A0007.OUT.columns |awk '{print $1, ($2+$3+$4+$5+$6+$7+$8+$9+$10+$11+$12+$13+$14+$15+$16+$17), ($18+$19+$20+$21+$22+$23+$24+$25+$26+$27+$28+$29+$30+$31+$32+$33)}'>file-O7.dat
blocks2columns.py PDOS_S03_A0008.OUT
paste PDOS_S03_A0008.OUT.columns |awk '{print $1, ($2+$3+$4+$5+$6+$7+$8+$9+$10+$11+$12+$13+$14+$15+$16+$17), ($18+$19+$20+$21+$22+$23+$24+$25+$26+$27+$28+$29+$30+$31+$32+$33)}'>file-O8.dat

rm *.columns

paste file-Zn1.dat file-Zn2.dat |awk '{print $1, $2+$5, $3+$6}'>Zn-pdos.dat

paste file-V1.dat file-V2.dat  file-V3.dat file-V4.dat |awk '{print $1,($2+$5+$8+$11),($3+$6+$9+$12)}'>V-pdos.dat

paste file-O1.dat file-O2.dat file-O3.dat file-O4.dat file-O5.dat file-O6.dat file-O7.dat file-O8.dat |awk '{print $1,($2+$5+$8+$11+$14+$17+$20+$23),($3+$6+$9+$12+$15+$18+$21+$24)}'>O-pdos.dat


gnuplot gnuplot-pdos.sh

gnuplot gnuplot-V-pdos.sh

open pdos.eps

open pdos-V.eps
