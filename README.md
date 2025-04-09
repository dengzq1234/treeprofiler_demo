# Fast treeprofiler 2025 demonstration

# Installation of conda enviroment

```
# create environment
conda create -n treeprofiler python=3.10
conda activate treeprofiler

# Install ETE Toolkit v4 for treeprofiler
pip install --force-reinstall "git+https://github.com/etetoolkit/ete.git@ete4_treeprofiler"

# Install custom pastml package for ete4
pip install --force-reinstall "git+https://github.com/dengzq1234/pastml.git@pastml2ete4"

# install treeprofiler 
pip install --force-reinstall https://github.com/compgenomicslab/TreeProfiler/archive/main.zip
```

quick check using 
```
treeprofiler plot -t gtdb_archaea_profiling/ar53_r207.nw
```
you should see the tree in local browser

# Usage different examples
Run the example by executing the `lablog` of each folder.

1) motus_full_habitat/
Here has the example of full motus reference tree (archaea+bacteria) with 124k leaves with taxonomic annotation + 53 habitat relative abundace matrix normalize with log transformation. 
```
cat lablog
treeprofiler plot -t motusid_full_annotated.nw --internal name --prop2type motusid_full_prop2type.txt --taxonrectangle-layout --taxonclade-layout --heatmap-layout $(cat motus_env_ids.tsv) --color-config color_config.csv -s ,
```

Explain of each arguments
- `-t`, target annotated tree
- `--internal`, Pass the parser=1 in ete4 when input is newick, internal nodes have names.
- `--prop2type`, if input tree is newick and with annotation of mixed datatype, this file is to tell treeprofiler the corresponding data type of each propery.
- `--taxonrectangle-layout`, activate the taxonrectangle layout, it generate the band for each rank indicating the taxonomic rank of corresponding nodes without collapsing the the nodes. Noted each band will always show in the same column so reccomend to activate only one rank per time. Such as activate superkingdom and mute the rest of ranks.
- `--taxonclade-layout`, it will assign different color to each taxa from each rank. Each rank will be a individual layout.
- `--heatmap-layout`, here pass the habitat names of the habitat log transformed relative abundance matrix to show the heatmap layout. Totally 53 of them
-  `--color-config`, pass the color config file to color the habitat matrix based on similarity of the environments. Max is the darkest color, min is white, absence is gray.
- `-s`, seperator of the `color.config`, here is `,`


2) motus_archaea_kegg_profiling/
Here has the example of motus archaea tree (~3,500 leaves) with taxonomic annotation + all kegg annotation 
```
cat lablog
treeprofiler plot -t motusid_archaea_annotated.ete --taxonrectangle-layout --taxoncollapse-layout --taxonclade-layout --profiling-layout kegg --profiling-list $(cat methano_kegg_list.txt)
```

Explain of each arguments
- `-t`, target annotated tree, here is ete format so keep the data type of each property.

- `--taxonrectangle-layout`, the same as above.
- `--taxonclade-layout`, same as above.
- `--taxoncollapse-layout`, the same as `--taxonrectangle-layout`, but will autocollapse the nodes grouped under the same rank.
- `--profiling-layout`, convert property's variables into presence-absence matrix, in this case the property called `kegg`.
- `--profiling-list`, custom the list of variables in the presence-absence matrix from the profiling. In this case, only show the kegg ko related to methane metabolism, totally 24 kos.

**Taxonomic layouts are mute by default hence need to swtich on later by users.** 

# Usage `treeprofiler-desktop`

After installation, simply run `treeprofiler-desktop`, it will show the GUI panel in localhost. Users can try `eggnog_example` or `gtdb_example`, it will run and annotation and visualization all together (takes ~1min)




