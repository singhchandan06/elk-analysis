#!/bin/bash

for i in {1..4}
do
 blocks2columns.py PDOS_S01_A000$i.OUT
 paste PDOS_S01_A000$i.OUT.columns |awk '{print $1, ($2+$3+$4+$5+$6+$7+$8+$9+$10+$11+$12+$13+$14+$15+$16+$17), ($18+$19+$20+$21+$22+$23+$24+$25+$26+$27+$28+$29+$30+$31+$32+$33)}'>file-Zn$i.dat
done

for i in {1..8}
do
 blocks2columns.py PDOS_S02_A000$i.OUT
 paste PDOS_S02_A000$i.OUT.columns |awk '{print $1, ($2+$3+$4+$5+$6+$7+$8+$9+$10+$11+$12+$13+$14+$15+$16+$17), ($18+$19+$20+$21+$22+$23+$24+$25+$26+$27+$28+$29+$30+$31+$32+$33)}'>file-V$i.dat
done

for i in {1..9}
do
 blocks2columns.py PDOS_S03_A000$i.OUT
 paste PDOS_S03_A000$i.OUT.columns |awk '{print $1, ($2+$3+$4+$5+$6+$7+$8+$9+$10+$11+$12+$13+$14+$15+$16+$17), ($18+$19+$20+$21+$22+$23+$24+$25+$26+$27+$28+$29+$30+$31+$32+$33)}'>file-O$i.dat
done

for i in {10..16}
do
 blocks2columns.py PDOS_S03_A00$i.OUT
 paste PDOS_S03_A00$i.OUT.columns |awk '{print $1, ($2+$3+$4+$5+$6+$7+$8+$9+$10+$11+$12+$13+$14+$15+$16+$17), ($18+$19+$20+$21+$22+$23+$24+$25+$26+$27+$28+$29+$30+$31+$32+$33)}'>file-O$i.dat
done

# orbitals contribution

for i in {1..4}
do
 paste PDOS_S01_A000$i.OUT.columns |awk '{print $1, ($6+$7+$8+$9+$10), ($22+$23+$24+$25+$26)}'>file-Zn$i-d.dat
done

for i in {1..8}
do
 paste PDOS_S02_A000$i.OUT.columns |awk '{print $1, ($6+$7+$8+$9+$10), ($22+$23+$24+$25+$26)}'>file-V$i-d.dat
done

for i in {1..9}
do
 paste PDOS_S03_A000$i.OUT.columns |awk '{print $1, ($3+$4+$5), ($19+$20+$21)}'>file-O$i-p.dat
done

for i in {10..16}
do
 paste PDOS_S03_A00$i.OUT.columns |awk '{print $1, ($3+$4+$5), ($19+$20+$21)}'>file-O$i-p.dat
done

rm *.columns

paste -d " " file-Zn{1..4}.dat |awk '{print $1, ($2+$5+$8+$11), ($3+$6+$9+$12)}'>Zn-pdos.dat

paste -d " " file-V{1..8}.dat |awk '{print $1,($2+$5+$8+$11+$14+$17+$20+$23),($3+$6+$9+$12+$15+$18+$21+$24)}'>V-pdos.dat

paste -d " " file-O{1..16}.dat |awk '{print $1,($2+$5+$8+$11+$14+$17+$20+$23+$26+$29+$32+$35+$38+$41+$44+$47),($3+$6+$9+$12+$15+$18+$21+$24+$27+$30+$33+$36+$39+$42+$45+$48)}'>O-pdos.dat

paste file-Zn{1..4}-d.dat |awk '{print $1, ($2+$5+$8+$11), ($3+$6+$9+$12)}'>Zn-pdos-d.dat

paste file-V{1..8}-d.dat |awk '{print $1,($2+$5+$8+$11+$14+$17+$20+$23),($3+$6+$9+$12+$15+$18+$21+$24)}'>V-pdos-d.dat

paste file-O{1..16}-p.dat |awk '{print $1,($2+$5+$8+$11+$14+$17+$20+$23+$26+$29+$32+$35+$38+$41+$44+$47),($3+$6+$9+$12+$15+$18+$21+$24+$27+$30+$33+$36+$39+$42+$45+$48)}'>O-pdos-p.dat

rm file-*
