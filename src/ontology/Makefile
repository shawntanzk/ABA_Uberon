ROBOT = robot
URIBASE = http://purl.obolibrary.org/obo

all: aba-uberon.owl.gz

IMP=true # Global parameter to bypass import generation
MIR=true # Global parameter to bypass mirror generation

#  Pulling full Uberon for now and using
mirror/uberon.owl: 
	@if [ $(MIR) = true ] && [ $(IMP) = true ]; then $(ROBOT) convert -I $(URIBASE)/uberon.owl -o $@.tmp.owl && mv $@.tmp.owl $@; fi

# TODO: move to making uberon slice.

# Merge sources. # crudely listing dependencies for now - but could switch to using pattern expansion
sources_merged.owl:
	robot merge --input sources/allen-dhba.obo --input sources/allen-dmba.obo --input sources/allen-hba.obo --input sources/allen-mba.obo --input sources/allen-pba.obo --input sources/uberon-bridge-to-aba.obo --input sources/uberon-bridge-to-dhba.obo --input sources/uberon-bridge-to-dmba.obo --input sources/uberon-bridge-to-hba.obo --input sources/uberon-bridge-to-mba.obo --input sources/uberon-bridge-to-pba.obo annotate --ontology-iri $(URIBASE)/$@ -o $@


# Generate seed for pulling relevant subset of Uberon
terms.txt: sources_merged.owl
	$(ROBOT) query --use-graphs true -f csv -i $< --query ../sparql/terms.sparql $@

# Generate slice of uberon.
# Using BOT for now - but this could potentially be more minimal

uberon_slice.owl: mirror/uberon.owl terms.txt
	$(ROBOT) extract --method BOT -i mirror/uberon.owl -T terms.txt -o $@


tmp.owl: uberon_slice.owl sources_merged.owl
	robot merge --input uberon_slice.owl --input sources_merged.owl annotate --ontology-iri $(URIBASE)/$@ -o $@

# Make a json file for use in geneating ROBOT template
tmp.json: tmp.owl
	$(ROBOT) convert --input tmp.owl -f json -o tmp.json

# Build robot  template - with linkouts and prefLabels

../robot_templates/linkouts.tsv: tmp.json
	python ../scripts/gen_linkout_template.py

# generate OWL from template

linkouts.owl: tmp.owl ../robot_templates/linkouts.tsv
	robot template --template ../robot_templates/linkouts.tsv --input $< --prefix=OboInOwl:http://www.geneontology.org/formats/oboInOwl# -o $@

# Generate release file by  merging in OWL from template
aba_uberon.owl: linkouts.owl
	robot merge --input $< --input tmp.owl annotate --ontology-iri $(URIBASE)/$@ convert -f ofn -o $@

# Compress for release to get below GitHub file size restrictions.
aba-uberon.owl.gz: aba_uberon.owl
	gzip $< 





