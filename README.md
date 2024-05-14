***Note: This version of the taxonomy is specifically pre-configured for testing purposes. For the general-purpose version, please refer to the [original repository]([https://github.com/brain-bican/taxonomy-development-tools](https://github.com/brain-bican/human-brain-cell-atlas_v1_neurons).***

For details on setting up the test environment, please visit the [TDT test repository](https://github.com/bicantester/taxonomy-development-tools/) to see the test environment setup procedure. 

# Human Brain Cell Atlas v1.0 (Neurons) (CS202210140)

Atlas of human primary motor cortex (M1), developed in collaboration with the BRAIN Initiative Cell Census Network (BICCN).
First draft atlas of human brain transcriptomic cell types: The human brain directs a wide range of complex behaviors ranging from fine motor skills to abstract intelligence and emotion. This broad range of functions is supported by an exceptionally complex cellular and circuit architecture. To create a first draft human brain cell atlas, high-throughput single-nucleus RNA sequencing was used to systematically survey cells across the entire adult human brain in three postmortem donors. Over three million nuclei were sampled from approximately 100 dissections across the forebrain, midbrain, and hindbrain. Analysis of these data showed regional diversity in that cellular organization exhibited regional diversity at multiple scales, identifying 30 superclusters, 461 clusters and 3313 subclusters. As the first single-cell transcriptomic census of the entire human brain, this atlas provides a resource for understanding the molecular diversity of the human brain in health and disease. The Human Brain Cell Atlas v1.0 is presented for visualization and data mining through the Chan Zuckerberg Initiative’s CellxGene application, with the following biologically meaningful partitions: 1. Neuronal and non-neuronal cell types 2. Supercluster-specific groupings (`Supercluster: `) 3.Brain region-specific groupings (`Dissection: `), ordered by the adult human brain anatomical reference atlas ontology in Ding et al. (2016)

Curate your taxonomy in 3 simple steps:

1. [Get Taxonomy Development Tools](#get-taxonomy-development-tools)  
1. [Load your data](#load-your-data)  
1. [Browse](#browse)  

## Get Taxonomy Development Tools 

Pull the latest TDT docker image via following the steps defined in the project [GitHub Container Registry](https://github.com/brain-bican/taxonomy-development-tools/pkgs/container/taxonomy-development-tools). 

```
docker pull ghcr.io/brain-bican/taxonomy-development-tools:latest
```

## Load your data

Place your data (ex. [AIT115_annotation_sheet.tsv](https://github.com/brain-bican/taxonomy-development-tools/tree/main/examples/nhp_basal_ganglia/AIT115_annotation_sheet.tsv)) and configuration file (ex. [ingestion_config.yaml](https://github.com/brain-bican/taxonomy-development-tools/tree/main/examples/nhp_basal_ganglia/ingestion_config.yaml)) into your project's `input_data` folder.  

Run following command in your project root folder to ingest your data files:

```
bash ./run.sh make load_data
```

## Browse

Run following command in your project root folder to run the online data editor:
```
bash ./run.sh make serve
```

This command will print a set of logs including a log like `nanobot::serve: listening on 0.0.0.0:3000`. This means your web editor is ready, and you can start editing your data.

You can start browsing web taxonomy editor from: [http://localhost:3000/table](http://localhost:3000/table)

_For further details see [Taxonomy Development Tools Documentation](https://brain-bican.github.io/taxonomy-development-tools/)_
