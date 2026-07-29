# docker-SigProfilerExtractor
Boutros Lab Docker image for SigProfilerExtractor.

This image installs `SigProfilerExtractor` `1.2.1` from Bioconda into a dedicated Conda environment.

---

## Runtime Notes

- SigProfilerExtractor requires reference genomes to be installed separately at runtime.
- Upstream documents genome installation through `SigProfilerMatrixGenerator`, for example `genInstall.install("GRCh37")`.

---

# Version
| Tool | Version |
|------|---------|
| SigProfilerExtractor | 1.2.1 |
| Python | 3.13.5 |
| pandas | >=2.0,<3.0 |

---

## Discussions

- [Issue tracker](https://github.com/TheBoutrosLab/docker-SigProfilerExtractor/issues) to report errors and enhancement ideas.
- Discussions can take place in [docker-SigProfilerExtractor Discussions](https://github.com/TheBoutrosLab/docker-SigProfilerExtractor/discussions).
- [docker-SigProfilerExtractor pull requests](https://github.com/TheBoutrosLab/docker-SigProfilerExtractor/pulls) are also open for discussion.

---

## Contributors

Please see the list of [Contributors](https://github.com/TheBoutrosLab/docker-SigProfilerExtractor/graphs/contributors) at GitHub.

---

## References

1. [SigProfilerExtractor GitHub repository](https://github.com/SigProfilerSuite/SigProfilerExtractor)
2. [SigProfilerExtractor documentation](https://sigprofilersuite.github.io/SigProfilerExtractor/)
3. [SigProfilerExtractor PyPI package](https://pypi.org/project/SigProfilerExtractor/)
4. Islam SMA, Diaz-Gay M, Wu Y, Barnes M, Vangara R, Bergstrom EN, He Y, Vella M, Wang J, Teague JW, Clapham P, Moody S, Senkin S, Li YR, Riva L, Zhang T, Gruber AJ, Steele CD, Otlu B, Khandekar A, Abbasi A, Humphreys L, Syulyukina N, Brady SW, Alexandrov BS, Pillay N, Zhang J, Adams DJ, Martincorena I, Wedge DC, Landi MT, Brennan P, Stratton MR, Rozen SG, Alexandrov LB. Uncovering novel mutational signatures by de novo extraction with SigProfilerExtractor. Cell Genomics. 2022;2(2):100179. https://doi.org/10.1016/j.xgen.2022.100179

---

## License

Author: Yash Patel

`docker-SigProfilerExtractor` is licensed under the GNU General Public License version 2. See the file LICENSE for the terms of the GNU GPL license.

`docker-SigProfilerExtractor` provides a Docker image for SigProfilerExtractor.

Copyright (C) 2026 Sanford Burnham Prebys Medical Discovery Institute ("Boutros Lab") All rights reserved.

This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 2 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.
