# run annotation
treeprofiler annotate \
-t ./ar53_r207.nw \
-d cdh_mcr_mtr_kegg_profiling_matrix.csv \
--counter-stat raw \
--ls-columns cdhA cdhB cdhC mcrA mcrB mcrC mcrD mcrG mtrA mtrB mtrC mtrD mtrE mtrF mtrG mtrH \
--taxon-column name \
--taxadb gtdb \
--taxa-dump ./gtdb207dump.tar.gz \
-o ./


# run visualization
treeprofiler plot \
--tree ar53_r207_annotated.ete \
--taxoncollapse-layout \
--ls-layout cdhA cdhB cdhC mcrA mcrB mcrC mcrD mcrG mtrA mtrB mtrC mtrD mtrE mtrF mtrG mtrH \
--binary-layout cdhA cdhB cdhC mcrA mcrB mcrC mcrD mcrG mtrA mtrB mtrC mtrD mtrE mtrF mtrG mtrH \
--column-width 30 \
--padding-x 2 \
--taxonclade-layout
