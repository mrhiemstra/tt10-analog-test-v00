v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
C {/home/ttuser/tt_projects/tt10-analog-test-v00/xschem/opamp_test.sym} 310 -420 0 0 {name=x1}
C {title.sym} 160 0 0 0 {name=l1 author="Stefan Schippers"}
C {lab_pin.sym} 460 -420 0 1 {name=p1 lab=OUT}
C {lab_pin.sym} 160 -440 0 0 {name=p2 lab=PLUS}
C {lab_pin.sym} 160 -400 0 0 {name=p3 lab=MINUS}
C {lab_pin.sym} 290 -330 0 0 {name=p4 lab=VCC}
C {lab_pin.sym} 290 -300 0 0 {name=p5 lab=VSS}
C {code.sym} 650 -240 0 0 {name=STIMULI only_toplevel=false value="
.option method=gear

.option wnflag=1

.param VCCGAUSS = agauss(1.8, 0.05, 1)
.param VCC = 'VCCGAUS'

.param TEMPGAUSS = agauss(40, 30, 1)
.option temp = 'TEMPGAUSS'

.include stimuli_test_bench_opamp.cir
.control
	option seed=9
	let run=0
	dowhile run <= 100
		save all
		tran 1n 4000n uic
		remzerovec
		write test_bench_opamp.raw
		set appendwrite
		reset
		let run = run + 1
	end
.endc"}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/corner.sym} 510 -240 0 0 {name=CORNER only_toplevel=false corner=tt_mm
}
