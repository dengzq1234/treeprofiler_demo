#!/bin/bash

# annotate tree of COG1348 with eggNOG-mapper annotations and taxonomic annotations
echo "Start mapping tree with annotation metadata"
treeprofiler annotate \
--tree COG1348.tree \
--emapper-annotation COG1348.out.emapper.annotations \
--emapper-pfam COG1348.out.emapper.pfam \
--alignment COG1348.faa.aln \
--taxadb NCBI \
--taxon-column name \
--taxon-delimiter . \
--taxa-field 0 \
-o ./


# visualize annotated trees with all eggnog mapper features
echo "Visualizing annotated tree with all eggnog mapper features......"
treeprofiler plot --tree COG1348_annotated.ete \
--emapper-layout \
--domain-layout \
--taxonclade-layout \
--alignment-layout \
--column-width 70
