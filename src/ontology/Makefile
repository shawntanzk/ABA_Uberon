ROBOT = robot
URIBASE = http://purl.obolibrary.org/obo

all: aba-uberon.owl

IMP=true # Global parameter to bypass import generation
MIR=true # Global parameter to bypass mirror generation

mirror/uberon.owl: 
	@if [ $(MIR) = true ] && [ $(IMP) = true ]; then $(ROBOT) convert -I $(URIBASE)/uberon.owl -o $@.tmp.owl && mv $@.tmp.owl $@; fi

# TODO: move to making uberon slice.

# crudely listing dependencies for now - but could switch to using pattern expansion
tmp.owl: mirror/uberon.owl
	robot merge --input sources/allen-dhba.obo --input sources/allen-dmba.obo --input sources/allen-hba.obo --input sources/allen-mba.obo --input sources/allen-pba.obo --input sources/uberon-bridge-to-aba.obo --input sources/uberon-bridge-to-dhba.obo --input sources/uberon-bridge-to-dmba.obo --input sources/uberon-bridge-to-hba.obo --input sources/uberon-bridge-to-mba.obo --input sources/uberon-bridge-to-pba.obo --input $< annotate --ontology-iri $(URIBASE)/$@ -o $@

tmp.json: tmp.owl
	$(ROBOT) convert --input tmp.owl -f json -o tmp.json

../robot_templates/linkouts.tsv: tmp.json
	python ../scripts/gen_linkout_template.py

linkouts.owl: tmp.owl ../robot_templates/linkouts.tsv
	robot template --template ../robot_templates/linkouts.tsv --input $< --prefix=OboInOwl:http://www.geneontology.org/formats/oboInOwl# -o $@

aba-uberon.owl: linkouts.owl
	robot merge --input $< --input tmp.owl annotate --ontology-iri $(URIBASE)/$@ -o $@





