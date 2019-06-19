# Tutorial_DFT_1D_Nanomaterials_QuantumEspresso

This code performs first-principle calculations for 1D nanosystems such as graphene nanoribbons (GNRs). The geometry parameters like bond lengths and lattice constants are obtained experimentally. A self-consistent calculation is performed using atomic pseudopotentials to obtain the converged electron density, which is then used to calculate the quantum energy levels of the system. A band structure calculation is performed at the end of the self-consistent field calculation in order to predict important optoelectronic parameters such as energy band gap and electron/hole effective masses. All calculations are performed using the Quantum Espresso DFT Solver. For more information, see the following link: https://www.quantum-espresso.org/

H.pz-rrkjus_psl.1.0.0.UPF: atomic pseudopotential file for Hydrogen.

C.pz-n-rrkjus_psl.0.1.UPF: atomic pseudopotential file for Carbon.

scf.in: performs self-consistent field calculations using density functional theory.

nscf.in: performs non-self-consistent field calculations using save data from self-consistent field calculations to determine quantized energy levels and Fermi energy.

bands.in: performs band structure calculation after self-consistent field calculation is completed. Band structure is computed along a given path joining high symmetry points in first Brillouin Zone.

bands_plot.in: re-arranges band structure data in a format that projects three-dimensional band structure into a one-dimensional plot along high symmetry lines in the Brillouin zone.

batch_script.sl: batch script for batch scheduling and allocating of computer resources.

output.in: shows the GNR unit cell and useful outputs such as band structure plot and energy band gap.
