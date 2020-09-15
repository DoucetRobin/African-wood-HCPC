# African-wood-HCPC

1. Database

Before using R script, dwonload the database "db_tropix.csv"

All data in this database come from BioWooEB (CIRAD) Tropix data sheets (DOI: <a href="https://tropix.cirad.fr/en">doi:10.18167/74726F706978</a>)

In this file,

- a = Density at 12% moisture content (kg/m³)
- b = Volumetric shrinkage coefficent (%/%)
- c = Total tangential shrinkage (%)
- d = Total radial shrinkkage (%)
- e = Anisotropy ratio (no unit)
- f = Fiber saturation point (%)
- g = Young modulus (Mpa)
- h = Static bending strength (Mpa)
- i = Axial compression strength (Mpa)
- j = Monnnin hardness (no unit)
- k = Natural durability against basidiomycete fungi (1 = very durable, 2 = durable, 3 = moderetaly durable, 4 = poorly durable, 5 = non durable)

2. R package 

- gridExtra  (Auguie, 2017)
- ggplot2 (Ggplot2 Development Team, 2012)
- factoextra (Kassambara and Mundt, 2017)
- factoMineR (Lê, Josse and Husson, 2008)
- RColorBrewer (de Vries and Ripley, 2016)
- ggdendro (Neuwirth, 2014)
- reshape 2 (Wickham, 2017)
- tidyverse (Wickham et al., 2019)

3. Rscript

This script allow to:

- Process PCA on the the dataset;
- Process a Hierarachical Clustering on Principal Component (HCPC) from the PCA;
- Plot a dendrogram based on the HCPC (p1);
- Plot normalized variables used in the PCA analysis for each observation (p2);
- Combine p1 and p2 to align dendrogram observations to their normalized variables.
 
Depending on observations added in the database, the alignment of p1 and p2 can change. 

To fix this problem, the axis.text.y margin can be adapted for a goog alignment.

4. Bibliography

Auguie, B. (2017) ‘gridExtra: functions in Grid graphics. R Package Version 2.3’, CRAN PROJECT.

Ggplot2 Development Team (2012) ‘Ggplot2-0.9.0’, Production, (ii), pp. 1–41.

Kassambara, A. and Mundt, F. (2017) ‘Package “factoextra”’, R topics documented.

Lê, S., Josse, J. and Husson, F. (2008) ‘FactoMineR: An R package for multivariate analysis’, Journal of Statistical Software, 25(1). 

Neuwirth, E. (2014) ‘RColorBrewer: ColorBrewer palettes’, R package version 1.1-2.

de Vries, A. and Ripley, B. D. (2016) ‘Package “ggdendro”: Create Dendrograms and Tree Diagrams Using “ggplot2” (R package)’, R package version 0.1-20.

Wickham, H. (2017) R: Package ‘reshape2’, CRAN.

Wickham, H. et al. (2019) ‘Welcome to the Tidyverse’, Journal of Open Source Software. The Open Journal, 4(43), p. 1686. 




