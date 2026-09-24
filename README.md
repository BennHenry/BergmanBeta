# Bergman beta: the planar log gas in the disk

A collaborative study of the large particle number limit of a 2D log gas confined in the unit disk. As the number of points grows, we ask whether a random configuration remains in the interior, what its distribution is, and how it depends on the strength of the repulsion.


It is still not very clear how we will work together, but there is a [Discord server available for discussion](https://discord.gg/m4VbUtkY6).

The final aim is to build a coherent, checked, reader-friendly account of the mathematics: what is known, which arguments work, and which questions remain. The ultimate goal could be a future manuscript under a collective name, online videos, or anything that allows us to share this mathematics. All of this comes with the idea of rejecting ownership of results or proofs, as well as individual credit.

**At inverse temperature $\beta=2$, the limit is known explicitly** The whole sequence converges to the Bergman point process (see HKPV).

## Model and main question

For $N$ points $z_1,\ldots,z_N$ in the unit disk $\mathbb D=\\{z\in\mathbb C:|z|<1\\}$, the probability density, with respect to Lebesgue measure, is


$$
\frac{1}{Z_{N,\beta}}
\prod_{1\le i\lt j\le N}
|z_i-z_j|^\beta,
\qquad \beta>0.
$$

Here $Z_{N,\beta}$ is the constant that makes the density integrate to one. Close pairs are penalized, more strongly when $\beta$ is larger. There is no additional potential acting on the points inside the disk. This is the planar logarithmic gas in a disk.

Let $N$ tend to infinity, without rescaling distances. We observe the points in each smaller disk $|z|\le r<1$. Even though the total number of points grows, most can move towards the boundary, so the number in a smaller disk need not grow. The main question is whether this model converges to a unique probability law, and how to describe that law.

## History

This project was proposed by [Raphaël Butez](https://sites.google.com/site/rabutez/).

## Announced results

Announced results are results claimed to be proved in the supplied notes but that have not yet been checked or rewritten by this project.

* **Limiting configurations exist along subsequences.** For every $\beta>0$, one can choose particle numbers tending to infinity along which the random configurations converge in distribution. Each limit has finitely many points in every smaller disk, and no two points coincide. Different choices of particle numbers might still give different limiting laws ([main note](Raw%20material/disk_log_gas_limits.tex)).
* **For $0<\beta<2$, every such limit contains infinitely many points.** They can accumulate only at the boundary. Their expected density at $z$ is at least $c_\beta/[\pi(1-|z|^2)^2]$ for a constant $c_\beta>0$. The notes also give quantitative bounds on how many points lie near the boundary ([main note](Raw%20material/disk_log_gas_limits.tex)).
* **For $\beta\ge4$, the interior becomes empty.** For every fixed $r<1$, the probability that any point lies in $|z|\le r$ tends to zero as $N$ grows. All the points concentrate towards the boundary. The notes give an explicit rate when $\beta>4$ ([main note](Raw%20material/disk_log_gas_limits.tex)).
* **Equations for conditional distributions do not automatically determine the limit.** At $\beta=2$, the notes describe the distribution of the points inside a region given the entire configuration outside. They also construct several different infinite point processes satisfying the same proposed equations for redistributing points inside a region while fixing their number. Those equations alone therefore cannot prove uniqueness of the disk-gas limit ([main note](Raw%20material/disk_log_gas_limits.tex)).
* **Changes near $\beta=2$ can be calculated.** For the finite systems, the notes compute how the joint densities of points change to first order as $\beta$ varies at $2$, and obtain limits of these derivatives as $N$ grows. Companion estimates bound the effect of certain changes to the potential acting on the particles ([perturbation note](Raw%20material/near_determinantal_disk_gas.tex), [screening note](Raw%20material/actual_disk_gas_screening.tex)).

## Checked results

The project has not started yet.

## Open questions

* **Does the whole sequence converge?** For $0<\beta<4$, $\beta\ne2$, do all choices of particle numbers tending to infinity lead to the same limiting law?
* **Does the limit have all the symmetries of the hyperbolic disk?** This means that applying any Möbius transformation mapping the unit disk onto itself leaves the distribution unchanged. This is known at $\beta=2$ and remains open in the notes for the other values $0<\beta<4$.
* **Do points remain in the interior when $2<\beta<4$?** The notes do not establish whether a limiting configuration can be nonempty in this interval.
* **What is the expected density of the limit?** For $0<\beta<4$, the proposed formula is

  $$
  \rho_\beta(z)=\frac{4/\beta-1}{\pi(1-|z|^2)^2}.
  $$

  Here density means that the expected number of points in a region $A$ is $\int_A\rho_\beta(z)\,dA(z)$, where $dA$ is ordinary area. The formula agrees with the known case $\beta=2$. The [side note on random measures](Raw%20material/gmc_intensity_conjecture_side_note.tex) discusses ways to construct a process with this density and the further problem of proving that it is the limit of the finite gases.

## Repository contents

| File | Role |
| --- | --- |
| [Main research note](Raw%20material/disk_log_gas_limits.tex) | Possible limits as the number of points grows, their conditional distributions, and unresolved questions. |
| [Perturbation note](Raw%20material/near_determinantal_disk_gas.tex) | Calculations using the explicit case $\beta=2$ to study changes in the repulsion strength. |
| [Screening note](Raw%20material/actual_disk_gas_screening.tex) | Bounds on how changes in the potential and distant particles affect observations in the interior. |
| [Side note on random measures](Raw%20material/gmc_intensity_conjecture_side_note.tex) | Candidate limiting processes built using Gaussian multiplicative chaos, a random measure obtained by exponentiating a Gaussian field. |
| [main.tex](main.tex) | Working entry point, initially including the consolidated account. |
| [Manifesto](A%20Manifesto%20for%20Renewing%20the%20Practice%20of%20Mathematics.pdf) | Shared motivation for these open mathematics projects. |

## Building the notes

With `make`, `latexmk`, and a TeX Live installation providing the packages used by the notes, run from this directory:

```sh
make manuscript
make working
```

The outputs are `build/manuscript/disk_log_gas_limits.pdf` and `build/working/main.pdf`. Running `make` alone builds the manuscript. To build a companion note, override the source, for example:

```sh
make manuscript MANUSCRIPT="Raw material/near_determinantal_disk_gas.tex"
```

Build output and TeX auxiliary files are ignored by Git. Supplied research PDFs and the manifesto remain eligible for tracking. Each project is an independent repository.

## Disclaimer

By participating in this project, you withdraw any claim of ownership over the results that you provide. We believe that ownership of a proof or a mathematical result has become a nonsensical concept and, as such, should be rejected.

The repository uses the same [MIT license](LICENSE) as UniDLR.

## Working principles

* Not clear at the moment. It will depend on the dynamics of the group.
