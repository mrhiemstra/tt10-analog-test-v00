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
.endc
"}
C {/home/ttuser/pdk/volare/sky130/versions/bdc9412b3e468c102d01b7cf6337be06ec6e9c9a/sky130B/libs.tech/xschem/sky130_fd_pr/corner.sym} 500 -240 0 0 {name=CORNER only_toplevel=true corner=tt \{xschem version=3.1.0 file_version=1.2 \}
G \{\}
K \{type=netlist_commands
template="name=CORNER only_toplevel=false corner=tt"
format="tcleval([
set sky130_corner(tt) \\\\"
.param mc_mm_switch=0
.param mc_pr_switch=0
.include $::SKYWATER_MODELS/corners/tt.spice
.include $::SKYWATER_MODELS/r+c/res_typical__cap_typical.spice
.include $::SKYWATER_MODELS/r+c/res_typical__cap_typical__lin.spice
.include $::SKYWATER_MODELS/corners/tt/specialized_cells.spice
\\\\"
set sky130_corner(sf) \\\\"
.param mc_mm_switch=0
.param mc_pr_switch=0
.include $::SKYWATER_MODELS/corners/sf.spice
.include $::SKYWATER_MODELS/r+c/res_typical__cap_typical.spice
.include $::SKYWATER_MODELS/r+c/res_typical__cap_typical__lin.spice
.include $::SKYWATER_MODELS/corners/sf/specialized_cells.spice
\\\\"
set sky130_corner(ff) \\\\"
.param mc_mm_switch=0
.param mc_pr_switch=0
.include $::SKYWATER_MODELS/corners/ff.spice
.include $::SKYWATER_MODELS/r+c/res_typical__cap_typical.spice
.include $::SKYWATER_MODELS/r+c/res_typical__cap_typical__lin.spice
.include $::SKYWATER_MODELS/corners/ff/specialized_cells.spice
\\\\"
set sky130_corner(ss) \\\\"
.param mc_mm_switch=0
.param mc_pr_switch=0
.include $::SKYWATER_MODELS/corners/ss.spice
.include $::SKYWATER_MODELS/r+c/res_typical__cap_typical.spice
.include $::SKYWATER_MODELS/r+c/res_typical__cap_typical__lin.spice
.include $::SKYWATER_MODELS/corners/ss/specialized_cells.spice
\\\\"
set sky130_corner(fs) \\\\"
.param mc_mm_switch=0
.param mc_pr_switch=0
.include $::SKYWATER_MODELS/corners/fs.spice
.include $::SKYWATER_MODELS/r+c/res_typical__cap_typical.spice
.include $::SKYWATER_MODELS/r+c/res_typical__cap_typical__lin.spice
.include $::SKYWATER_MODELS/corners/fs/specialized_cells.spice
\\\\"
set sky130_corner(ll) \\\\"
.param mc_mm_switch=0
.param mc_pr_switch=0
.include $::SKYWATER_MODELS/corners/tt.spice
.include $::SKYWATER_MODELS/r+c/res_low__cap_low.spice
.include $::SKYWATER_MODELS/r+c/res_low__cap_low__lin.spice
.include $::SKYWATER_MODELS/corners/tt/specialized_cells.spice
\\\\"
set sky130_corner(hh) \\\\"
.param mc_mm_switch=0
.param mc_pr_switch=0
.include $::SKYWATER_MODELS/corners/tt.spice
.include $::SKYWATER_MODELS/r+c/res_high__cap_high.spice
.include $::SKYWATER_MODELS/r+c/res_high__cap_high__lin.spice
.include $::SKYWATER_MODELS/corners/tt/specialized_cells.spice
\\\\"
set sky130_corner(hl) \\\\"
.param mc_mm_switch=0
.param mc_pr_switch=0
.include $::SKYWATER_MODELS/corners/tt.spice
.include $::SKYWATER_MODELS/r+c/res_high__cap_low.spice
.include $::SKYWATER_MODELS/r+c/res_high__cap_low__lin.spice
.include $::SKYWATER_MODELS/corners/tt/specialized_cells.spice
\\\\"
set sky130_corner(lh) \\\\"
.param mc_mm_switch=0
.param mc_pr_switch=0
.include $::SKYWATER_MODELS/corners/tt.spice
.include $::SKYWATER_MODELS/r+c/res_low__cap_high.spice
.include $::SKYWATER_MODELS/r+c/res_low__cap_high__lin.spice
.include $::SKYWATER_MODELS/corners/tt/specialized_cells.spice
\\\\"
set sky130_corner(tt_mm) \\\\"
.param mc_mm_switch=1
.param mc_pr_switch=0
.include $::SKYWATER_MODELS/corners/tt.spice
.include $::SKYWATER_MODELS/r+c/res_typical__cap_typical.spice
.include $::SKYWATER_MODELS/r+c/res_typical__cap_typical__lin.spice
.include $::SKYWATER_MODELS/corners/tt/specialized_cells.spice
\\\\"
set sky130_corner(sf_mm) \\\\"
.param mc_mm_switch=1
.param mc_pr_switch=0
.include $::SKYWATER_MODELS/corners/sf.spice
.include $::SKYWATER_MODELS/r+c/res_typical__cap_typical.spice
.include $::SKYWATER_MODELS/r+c/res_typical__cap_typical__lin.spice
.include $::SKYWATER_MODELS/corners/sf/specialized_cells.spice
\\\\"
set sky130_corner(ff_mm) \\\\"
.param mc_mm_switch=1
.param mc_pr_switch=0
.include $::SKYWATER_MODELS/corners/ff.spice
.include $::SKYWATER_MODELS/r+c/res_typical__cap_typical.spice
.include $::SKYWATER_MODELS/r+c/res_typical__cap_typical__lin.spice
.include $::SKYWATER_MODELS/corners/ff/specialized_cells.spice
\\\\"
set sky130_corner(ss_mm) \\\\"
.param mc_mm_switch=1
.param mc_pr_switch=0
.include $::SKYWATER_MODELS/corners/ss.spice
.include $::SKYWATER_MODELS/r+c/res_typical__cap_typical.spice
.include $::SKYWATER_MODELS/r+c/res_typical__cap_typical__lin.spice
.include $::SKYWATER_MODELS/corners/ss/specialized_cells.spice
\\\\"
set sky130_corner(fs_mm) \\\\"
.param mc_mm_switch=1
.param mc_pr_switch=0
.include $::SKYWATER_MODELS/corners/fs.spice
.include $::SKYWATER_MODELS/r+c/res_typical__cap_typical.spice
.include $::SKYWATER_MODELS/r+c/res_typical__cap_typical__lin.spice
.include $::SKYWATER_MODELS/corners/fs/specialized_cells.spice
\\\\"
set sky130_corner(ll_mm) \\\\"
.param mc_mm_switch=1
.param mc_pr_switch=0
.include $::SKYWATER_MODELS/corners/tt.spice
.include $::SKYWATER_MODELS/r+c/res_low__cap_low.spice
.include $::SKYWATER_MODELS/r+c/res_low__cap_low__lin.spice
.include $::SKYWATER_MODELS/corners/tt/specialized_cells.spice
\\\\"
set sky130_corner(hh_mm) \\\\"
.param mc_mm_switch=1
.param mc_pr_switch=0
.include $::SKYWATER_MODELS/corners/tt.spice
.include $::SKYWATER_MODELS/r+c/res_high__cap_high.spice
.include $::SKYWATER_MODELS/r+c/res_high__cap_high__lin.spice
.include $::SKYWATER_MODELS/corners/tt/specialized_cells.spice
\\\\"
set sky130_corner(hl_mm) \\\\"
.param mc_mm_switch=1
.param mc_pr_switch=0
.include $::SKYWATER_MODELS/corners/tt.spice
.include $::SKYWATER_MODELS/r+c/res_high__cap_low.spice
.include $::SKYWATER_MODELS/r+c/res_high__cap_low__lin.spice
.include $::SKYWATER_MODELS/corners/tt/specialized_cells.spice
\\\\"
set sky130_corner(lh_mm) \\\\"
.param mc_mm_switch=1
.param mc_pr_switch=0
.include $::SKYWATER_MODELS/corners/tt.spice
.include $::SKYWATER_MODELS/r+c/res_low__cap_high.spice
.include $::SKYWATER_MODELS/r+c/res_low__cap_high__lin.spice
.include $::SKYWATER_MODELS/corners/tt/specialized_cells.spice
\\\\"
set sky130_corner(mc) \\\\"
.param mc_mm_switch=0
.param mc_pr_switch=1
.include $::SKYWATER_MODELS/parameters/critical.spice
.include $::SKYWATER_MODELS/parameters/montecarlo.spice
\\\\"
return $sky130_corner(@corner\\\\\\\\)])"
\}
V \{\}
S \{\}
E \{\}
L 4 20 30 60 30 \{\}
L 4 20 40 40 40 \{\}
L 4 20 50 60 50 \{\}
L 4 20 60 50 60 \{\}
L 4 20 70 50 70 \{\}
L 4 20 80 90 80 \{\}
L 4 20 90 40 90 \{\}
L 4 20 20 70 20 \{\}
L 4 20 10 40 10 \{\}
L 4 100 10 110 10 \{\}
L 4 110 10 110 110 \{\}
L 4 20 110 110 110 \{\}
L 4 20 100 20 110 \{\}
L 4 100 0 100 100 \{\}
L 4 10 100 100 100 \{\}
L 4 10 0 10 100 \{\}
L 4 10 0 100 0 \{\}
T \{Corner: @corner\} 5 -25 0 0 0.3 0.3 \{\}
v \{xschem version=3.1.0 file_version=1.2 \}
G \{\}
K \{type=netlist_commands
template="name=CORNER only_toplevel=false corner=tt"
format="tcleval([
set sky130_corner(tt) \\\\"
.param mc_mm_switch=0
.param mc_pr_switch=0
.include $::SKYWATER_MODELS/corners/tt.spice
.include $::SKYWATER_MODELS/r+c/res_typical__cap_typical.spice
.include $::SKYWATER_MODELS/r+c/res_typical__cap_typical__lin.spice
.include $::SKYWATER_MODELS/corners/tt/specialized_cells.spice
\\\\"
set sky130_corner(sf) \\\\"
.param mc_mm_switch=0
.param mc_pr_switch=0
.include $::SKYWATER_MODELS/corners/sf.spice
.include $::SKYWATER_MODELS/r+c/res_typical__cap_typical.spice
.include $::SKYWATER_MODELS/r+c/res_typical__cap_typical__lin.spice
.include $::SKYWATER_MODELS/corners/sf/specialized_cells.spice
\\\\"
set sky130_corner(ff) \\\\"
.param mc_mm_switch=0
.param mc_pr_switch=0
.include $::SKYWATER_MODELS/corners/ff.spice
.include $::SKYWATER_MODELS/r+c/res_typical__cap_typical.spice
.include $::SKYWATER_MODELS/r+c/res_typical__cap_typical__lin.spice
.include $::SKYWATER_MODELS/corners/ff/specialized_cells.spice
\\\\"
set sky130_corner(ss) \\\\"
.param mc_mm_switch=0
.param mc_pr_switch=0
.include $::SKYWATER_MODELS/corners/ss.spice
.include $::SKYWATER_MODELS/r+c/res_typical__cap_typical.spice
.include $::SKYWATER_MODELS/r+c/res_typical__cap_typical__lin.spice
.include $::SKYWATER_MODELS/corners/ss/specialized_cells.spice
\\\\"
set sky130_corner(fs) \\\\"
.param mc_mm_switch=0
.param mc_pr_switch=0
.include $::SKYWATER_MODELS/corners/fs.spice
.include $::SKYWATER_MODELS/r+c/res_typical__cap_typical.spice
.include $::SKYWATER_MODELS/r+c/res_typical__cap_typical__lin.spice
.include $::SKYWATER_MODELS/corners/fs/specialized_cells.spice
\\\\"
set sky130_corner(ll) \\\\"
.param mc_mm_switch=0
.param mc_pr_switch=0
.include $::SKYWATER_MODELS/corners/tt.spice
.include $::SKYWATER_MODELS/r+c/res_low__cap_low.spice
.include $::SKYWATER_MODELS/r+c/res_low__cap_low__lin.spice
.include $::SKYWATER_MODELS/corners/tt/specialized_cells.spice
\\\\"
set sky130_corner(hh) \\\\"
.param mc_mm_switch=0
.param mc_pr_switch=0
.include $::SKYWATER_MODELS/corners/tt.spice
.include $::SKYWATER_MODELS/r+c/res_high__cap_high.spice
.include $::SKYWATER_MODELS/r+c/res_high__cap_high__lin.spice
.include $::SKYWATER_MODELS/corners/tt/specialized_cells.spice
\\\\"
set sky130_corner(hl) \\\\"
.param mc_mm_switch=0
.param mc_pr_switch=0
.include $::SKYWATER_MODELS/corners/tt.spice
.include $::SKYWATER_MODELS/r+c/res_high__cap_low.spice
.include $::SKYWATER_MODELS/r+c/res_high__cap_low__lin.spice
.include $::SKYWATER_MODELS/corners/tt/specialized_cells.spice
\\\\"
set sky130_corner(lh) \\\\"
.param mc_mm_switch=0
.param mc_pr_switch=0
.include $::SKYWATER_MODELS/corners/tt.spice
.include $::SKYWATER_MODELS/r+c/res_low__cap_high.spice
.include $::SKYWATER_MODELS/r+c/res_low__cap_high__lin.spice
.include $::SKYWATER_MODELS/corners/tt/specialized_cells.spice
\\\\"
set sky130_corner(tt_mm) \\\\"
.param mc_mm_switch=1
.param mc_pr_switch=0
.include $::SKYWATER_MODELS/corners/tt.spice
.include $::SKYWATER_MODELS/r+c/res_typical__cap_typical.spice
.include $::SKYWATER_MODELS/r+c/res_typical__cap_typical__lin.spice
.include $::SKYWATER_MODELS/corners/tt/specialized_cells.spice
\\\\"
set sky130_corner(sf_mm) \\\\"
.param mc_mm_switch=1
.param mc_pr_switch=0
.include $::SKYWATER_MODELS/corners/sf.spice
.include $::SKYWATER_MODELS/r+c/res_typical__cap_typical.spice
.include $::SKYWATER_MODELS/r+c/res_typical__cap_typical__lin.spice
.include $::SKYWATER_MODELS/corners/sf/specialized_cells.spice
\\\\"
set sky130_corner(ff_mm) \\\\"
.param mc_mm_switch=1
.param mc_pr_switch=0
.include $::SKYWATER_MODELS/corners/ff.spice
.include $::SKYWATER_MODELS/r+c/res_typical__cap_typical.spice
.include $::SKYWATER_MODELS/r+c/res_typical__cap_typical__lin.spice
.include $::SKYWATER_MODELS/corners/ff/specialized_cells.spice
\\\\"
set sky130_corner(ss_mm) \\\\"
.param mc_mm_switch=1
.param mc_pr_switch=0
.include $::SKYWATER_MODELS/corners/ss.spice
.include $::SKYWATER_MODELS/r+c/res_typical__cap_typical.spice
.include $::SKYWATER_MODELS/r+c/res_typical__cap_typical__lin.spice
.include $::SKYWATER_MODELS/corners/ss/specialized_cells.spice
\\\\"
set sky130_corner(fs_mm) \\\\"
.param mc_mm_switch=1
.param mc_pr_switch=0
.include $::SKYWATER_MODELS/corners/fs.spice
.include $::SKYWATER_MODELS/r+c/res_typical__cap_typical.spice
.include $::SKYWATER_MODELS/r+c/res_typical__cap_typical__lin.spice
.include $::SKYWATER_MODELS/corners/fs/specialized_cells.spice
\\\\"
set sky130_corner(ll_mm) \\\\"
.param mc_mm_switch=1
.param mc_pr_switch=0
.include $::SKYWATER_MODELS/corners/tt.spice
.include $::SKYWATER_MODELS/r+c/res_low__cap_low.spice
.include $::SKYWATER_MODELS/r+c/res_low__cap_low__lin.spice
.include $::SKYWATER_MODELS/corners/tt/specialized_cells.spice
\\\\"
set sky130_corner(hh_mm) \\\\"
.param mc_mm_switch=1
.param mc_pr_switch=0
.include $::SKYWATER_MODELS/corners/tt.spice
.include $::SKYWATER_MODELS/r+c/res_high__cap_high.spice
.include $::SKYWATER_MODELS/r+c/res_high__cap_high__lin.spice
.include $::SKYWATER_MODELS/corners/tt/specialized_cells.spice
\\\\"
set sky130_corner(hl_mm) \\\\"
.param mc_mm_switch=1
.param mc_pr_switch=0
.include $::SKYWATER_MODELS/corners/tt.spice
.include $::SKYWATER_MODELS/r+c/res_high__cap_low.spice
.include $::SKYWATER_MODELS/r+c/res_high__cap_low__lin.spice
.include $::SKYWATER_MODELS/corners/tt/specialized_cells.spice
\\\\"
set sky130_corner(lh_mm) \\\\"
.param mc_mm_switch=1
.param mc_pr_switch=0
.include $::SKYWATER_MODELS/corners/tt.spice
.include $::SKYWATER_MODELS/r+c/res_low__cap_high.spice
.include $::SKYWATER_MODELS/r+c/res_low__cap_high__lin.spice
.include $::SKYWATER_MODELS/corners/tt/specialized_cells.spice
\\\\"
set sky130_corner(mc) \\\\"
.param mc_mm_switch=0
.param mc_pr_switch=1
.include $::SKYWATER_MODELS/parameters/critical.spice
.include $::SKYWATER_MODELS/parameters/montecarlo.spice
\\\\"
return $sky130_corner(@corner\\\\\\\\)])"
\}
V \{\}
S \{\}
E \{\}
L 4 20 30 60 30 \{\}
L 4 20 40 40 40 \{\}
L 4 20 50 60 50 \{\}
L 4 20 60 50 60 \{\}
L 4 20 70 50 70 \{\}
L 4 20 80 90 80 \{\}
L 4 20 90 40 90 \{\}
L 4 20 20 70 20 \{\}
L 4 20 10 40 10 \{\}
L 4 100 10 110 10 \{\}
L 4 110 10 110 110 \{\}
L 4 20 110 110 110 \{\}
L 4 20 100 20 110 \{\}
L 4 100 0 100 100 \{\}
L 4 10 100 100 100 \{\}
L 4 10 0 10 100 \{\}
L 4 10 0 100 0 \{\}
T \{Corner: @corner\} 5 -25 0 0 0.3 0.3 \{\}
}
