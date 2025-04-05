v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 110 -370 170 -370 {
lab=MINUS}
N 420 -370 470 -370 {
lab=PLUS}
N 380 -340 380 -260 {
lab=#net1}
N 210 -340 210 -260 {
lab=#net1}
N 380 -610 380 -520 {
lab=VCC}
N 220 -610 380 -610 {
lab=VCC}
N 100 -610 220 -610 {
lab=VCC}
N 210 -610 210 -520 {
lab=VCC}
N 250 -490 340 -490 {
lab=#net2}
N 210 -460 210 -400 {
lab=#net2}
N 380 -460 380 -400 {
lab=OUT}
N 380 -430 420 -430 {
lab=OUT}
N 210 -430 280 -430 {
lab=#net2}
N 290 -490 290 -430 {
lab=#net2}
N 280 -430 290 -430 {
lab=#net2}
N 210 -370 250 -370 {
lab=VSS}
N 340 -370 380 -370 {
lab=VSS}
N 420 -430 470 -430 {
lab=OUT}
N 300 -170 300 -110 {
lab=VSS}
N 100 -170 100 -110 {
lab=VSS}
N 60 -200 100 -200 {
lab=VSS}
N 300 -200 340 -200 {
lab=VSS}
N 90 -80 300 -80 {
lab=VSS}
N 300 -110 300 -80 {
lab=VSS}
N 100 -110 100 -80 {
lab=VSS}
N 300 -260 300 -230 {
lab=#net1}
N 210 -260 380 -260 {
lab=#net1}
N 100 -270 100 -230 {
lab=#net3}
N 300 -80 340 -80 {
lab=VSS}
N 20 -80 60 -80 {
lab=VSS}
N 170 -200 220 -200 {
lab=#net3}
N 220 -200 260 -200 {
lab=#net3}
N 100 -250 150 -250 {
lab=#net3}
N 150 -250 150 -200 {
lab=#net3}
N 60 -80 90 -80 {
lab=VSS}
N 140 -200 170 -200 {
lab=#net3}
N 50 -300 80 -300 {
lab=VSS}
N 100 -340 100 -330 {
lab=VCC}
N 50 -340 100 -340 {
lab=VCC}
C {title.sym} 0 0 0 0 {name=l1 author="Martijn Hiemstra"}
C {lab_pin.sym} 110 -370 0 0 {name=p6 sig_type=std_logic lab=MINUS
}
C {lab_pin.sym} 470 -370 0 1 {name=p1 sig_type=std_logic lab=PLUS

}
C {lab_pin.sym} 20 -80 0 0 {name=p2 sig_type=std_logic lab=VSS
}
C {lab_pin.sym} 100 -610 0 0 {name=p3 sig_type=std_logic lab=VCC
}
C {lab_pin.sym} 60 -200 0 0 {name=p8 sig_type=std_logic lab=VSS
}
C {lab_pin.sym} 340 -370 0 0 {name=p9 sig_type=std_logic lab=VSS
}
C {lab_pin.sym} 250 -370 0 1 {name=p10 sig_type=std_logic lab=VSS
}
C {lab_pin.sym} 340 -200 0 1 {name=p11 sig_type=std_logic lab=VSS
}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/res_xhigh_po_2p85.sym} 100 -300 0 0 {name=R1
L=2.85
model=res_xhigh_po_2p85
spiceprefix=X
mult=1}
C {lab_pin.sym} 50 -300 0 0 {name=p12 sig_type=std_logic lab=VSS
}
C {lab_pin.sym} 50 -340 0 0 {name=p13 sig_type=std_logic lab=VCC
}
C {ipin.sym} -180 -270 2 1 {name=p14 lab=OUT}
C {lab_pin.sym} 470 -430 0 1 {name=p5 sig_type=std_logic lab=OUT

}
C {ipin.sym} -180 -240 2 1 {name=p15 lab=PLUS}
C {ipin.sym} -180 -210 2 1 {name=p16 lab=MINUS}
C {ipin.sym} -180 -160 2 1 {name=p17 lab=VCC}
C {ipin.sym} -180 -130 2 1 {name=p18 lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8_lvt.sym} 190 -370 0 0 {name=M1
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8_lvt.sym} 280 -200 0 0 {name=M2
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8_lvt.sym} 120 -200 0 1 {name=M5
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8_lvt.sym} 400 -370 0 1 {name=M6
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet3_01v8_lvt.sym} 360 -490 0 0 {name=M3
L=0.15
W=1
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet3_01v8_lvt.sym} 230 -490 0 1 {name=M4
L=0.15
W=1
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
