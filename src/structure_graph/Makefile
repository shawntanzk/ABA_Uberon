LINKML = linkml-data2owl

STRUCTURE_GRAPHS = $(wildcard *.json)
ALL_GRAPH_ONTOLOGIES = $(patsubst %.json,../ontology/sources/%.ofn,$(STRUCTURE_GRAPHS))
ALL_TEMPLATES = $(patsubst %.json,../linkml/data/template_%.tsv,$(STRUCTURE_GRAPHS))


all: $(ALL_GRAPH_ONTOLOGIES)

../linkml/data/template_%.tsv: %.json
	python ../scripts/structure_graph_template.py -i $< -o $@
#.PRECIOUS: ../linkml/data/template_%.tsv

../ontology/sources/%.ofn: ../linkml/data/template_%.tsv
	$(LINKML) -C Class -s ../linkml/structure_graph_schema.yaml $< -o $@
