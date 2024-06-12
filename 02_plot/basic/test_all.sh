# annotation
treeprofiler annotate -t basic_example1.nw -d metadata.tsv -o ./

# general
treeprofiler plot \
--tree basic_example1_annotated.ete \
--rectangle-layout col6 \
--binary-layout col7 \
--heatmap-layout col1 col2 col3 \
--barplot-layout col9 col11 \
--profiling-layout col10

# change column width from default 20 px to 50px
# padding x from default 1 to 5
treeprofiler plot \
--tree basic_example1_annotated.ete \
--rectangle-layout col6 \
--binary-layout col7 \
--heatmap-layout col1 col2 col3 \
--profiling-layout col10 \
--column-width 50 \
--padding-x 5

# Visualize annotated example tree by showing categorical property random_type with label_layout, rectangular_layout and colorbranch_layout.
treeprofiler plot \
-t basic_example1_annotated.ete \
--label-layout col6

# every node share the property "name" in
treeprofiler plot \
-t basic_example1_annotated.ete \
--colorbranch-layout name

# show normal counter 
treeprofiler plot \
-t basic_example1_annotated.ete \
--colorbranch-layout col6

treeprofiler plot \
-t basic_example1_annotated.ete \
--background-layout col6

treeprofiler plot \
-t basic_example1_annotated.ete \
--piechart-layout col6

treeprofiler plot \
-t basic_example1_annotated.ete \
--profiling-layout col6

# convert each letter into presence/absence matrix
treeprofiler plot \
-t basic_example1_annotated.ete \
--profiling-layout col11

# Visualize boolean data
treeprofiler plot \
-t basic_example1_annotated.ete \
--binary-layout col7 col8

treeprofiler plot \
-t basic_example1_annotated.ete \
--binary-aggregate-layout col7 col8

treeprofiler plot \
-t basic_example1_annotated.ete \
--binary-uniclor-layout col7 col8

treeprofiler plot \
-t basic_example1_annotated.ete \
--binary-unicolor-aggregate-layout col7 col8

treeprofiler plot \
-t basic_example1_annotated.ete \
--binary-matrix-layout col7 col8