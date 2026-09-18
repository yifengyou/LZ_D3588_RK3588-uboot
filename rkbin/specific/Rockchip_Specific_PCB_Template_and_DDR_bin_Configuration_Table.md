# Rockchip_Specific_PCB_Template_and_DDR_bin_Configuration_Table.md
### RK3566

| PCB Template                                                 | DDRBIN                                         | Note                                                         |
| ------------------------------------------------------------ | ---------------------------------------------- | ------------------------------------------------------------ |
| RK3566_Template_LP3D178P232DD414_43R0X25R0_<br/>666MHZ_1056MHZ_H1R6_V10_20251125SQJ | rk3566_ddr_2x178ball_lp3_<br/>666MHz_vx.xx.bin | DDRBIN默认666MHz(1333Mbps)，当仅贴1颗LP3时最高可通过ddrbin_tool修改到1056MHz(颗粒也需要支持1056MHz) |



------

### RK3562

| PCB Template                                                 | DDRBIN                                       | Note                                                         |
| ------------------------------------------------------------ | -------------------------------------------- | ------------------------------------------------------------ |
| RK3562_Template_LP3Q296P164SS61346_<br/>38R7x30R3_1066Mbps_H1R6_V10_20251204 | rk3562_ddr_296ball_lp3_<br/>528MHz_vx.xx.bin |                                                              |
| RK3562_Template_LP3D178P232DD414_38R0X25R0<br/>_1332Mbps_2112Mbps_H1R6_V10_20251217SQJ | rk3562_ddr_296ball_lp3_<br/>528MHz_vx.xx.bin | DDRBIN默认528MHz(1056Mbps)，当贴2颗LP3时可通过ddrbin_tool修改到666MHz，贴1颗时最高可修改到1056MHz(颗粒也需要支持1056MHz) |

------

