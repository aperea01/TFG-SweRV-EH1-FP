# Extensiones de punto flotante para el core SweRV EH1

Trabajo Fin de Grado en Ingeniería de Computadores. Facultad de Informática, Universidad Complutense de Madrid.
Realizado por Alejandro Perea Rodríguez.

Cada carpeta incluye:
* **cvfpu_NewPipe_PrePostSync** contiene la integración de la unidad [FPnew](https://github.com/openhwgroup/cvfpu).
* **FPU_NewPipe_PrePostSync** contiene la integración de la unidad [FPU](https://github.com/dawsonjon/fpu).
* **test_riscv2.5** [riscv-arch-test](https://github.com/riscv-non-isa/riscv-arch-test/tree/2.5.0) adaptado al SoC. El modelo creado se encuentra en la siguiente [ruta](test_riscv2.5/fusesoc_libraries/swervolf/riscv-target/swerv). Y los resultados de la extensión Zfinx junto con los .hex para ejecutar, en esta otra [ruta](test_riscv2.5/riscv-compliance/work/rv32i_m), dentro de la carpeta Zfinx.
