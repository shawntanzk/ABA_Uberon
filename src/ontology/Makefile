ROBOT = robot
URIBASE = http://purl.obolibrary.org/obo

all: dependencies aba_uberon.owl report.xlsx

.PHONY: dependencies
dependencies:
	pip install openpyxl

IMP=true # Global parameter to bypass import generation
MIR=true # Global parameter to bypass mirror generation

#  Pulling full Uberon for now and using
mirror/uberon.owl:
	@if [ $(MIR) = true ] && [ $(IMP) = true ]; then $(ROBOT) convert -I $(URIBASE)/uberon.owl -o $@.tmp.owl && mv $@.tmp.owl $@; fi

# TODO: move to making uberon slice.

# Download sources
# Should be replaced by making these files instead of downloading from uberon in future

sources/allen-mba.obo: 
	curl -o sources/allen-mba.obo "https://raw.githubusercontent.com/obophenotype/uberon/master/source-ontologies/allen-mba.obo" 

sources/allen-dmba.obo: 
	curl -o sources/allen-dmba.obo "https://raw.githubusercontent.com/obophenotype/uberon/master/source-ontologies/allen-dmba.obo"

sources/allen-hba.obo: 
	curl -o sources/allen-hba.obo "https://raw.githubusercontent.com/obophenotype/uberon/master/source-ontologies/allen-hba.obo"

sources/allen-dhba.obo: 
	curl -o sources/allen-dhba.obo "https://raw.githubusercontent.com/obophenotype/uberon/master/source-ontologies/allen-dhba.obo"

sources/allen-pba.obo: 
	curl -o sources/allen-pba.obo "https://raw.githubusercontent.com/obophenotype/uberon/master/source-ontologies/allen-pba.obo"

sources/uberon-bridge-to-aba.obo:
	curl -o sources/uberon-bridge-to-aba.obo "https://raw.githubusercontent.com/obophenotype/uberon/master/src/ontology/bridge/uberon-bridge-to-aba.obo"

sources/uberon-bridge-to-dhba.obo: 
	curl -o sources/uberon-bridge-to-dhba.obo "https://raw.githubusercontent.com/obophenotype/uberon/master/src/ontology/bridge/uberon-bridge-to-dhba.obo"

sources/uberon-bridge-to-dmba.obo:
	curl -o sources/uberon-bridge-to-dmba.obo "https://raw.githubusercontent.com/obophenotype/uberon/master/src/ontology/bridge/uberon-bridge-to-dmba.obo"

sources/uberon-bridge-to-hba.obo:
	curl -o sources/uberon-bridge-to-hba.obo "https://raw.githubusercontent.com/obophenotype/uberon/master/src/ontology/bridge/uberon-bridge-to-hba.obo"

sources/uberon-bridge-to-mba.obo:
	curl -o sources/uberon-bridge-to-mba.obo "https://raw.githubusercontent.com/obophenotype/uberon/master/src/ontology/bridge/uberon-bridge-to-mba.obo"

sources/uberon-bridge-to-pba.obo:
	curl -o sources/uberon-bridge-to-pba.obo "https://raw.githubusercontent.com/obophenotype/uberon/master/src/ontology/bridge/uberon-bridge-to-pba.obo"

all_sources: 
	make sources/allen-dhba.obo sources/allen-dmba.obo sources/allen-hba.obo sources/allen-mba.obo sources/allen-pba.obo sources/uberon-bridge-to-aba.obo sources/uberon-bridge-to-dhba.obo sources/uberon-bridge-to-dmba.obo sources/uberon-bridge-to-hba.obo sources/uberon-bridge-to-mba.obo sources/uberon-bridge-to-pba.obo -B


# Merge sources. # crudely listing dependencies for now - but could switch to using pattern expansion
sources_merged.owl: all_sources
	robot merge --input sources/allen-dhba.obo --input sources/allen-dmba.obo --input sources/allen-hba.obo --input sources/allen-mba.obo --input sources/allen-pba.obo --input sources/uberon-bridge-to-aba.obo --input sources/uberon-bridge-to-dhba.obo --input sources/uberon-bridge-to-dmba.obo --input sources/uberon-bridge-to-hba.obo --input sources/uberon-bridge-to-mba.obo --input sources/uberon-bridge-to-pba.obo annotate --ontology-iri $(URIBASE)/$@ -o $@


# Generate seed for pulling relevant subset of Uberon
terms.txt: sources_merged.owl
	$(ROBOT) query --use-graphs true -f csv -i $< --query ../sparql/terms.sparql $@

# Generate slice of uberon, removing disjoints
# Using BOT for now - but this could potentially be more minimal

uberon_slice.owl: mirror/uberon.owl terms.txt
	$(ROBOT) extract --method BOT --input mirror/uberon.owl --term-file terms.txt --force true remove --axioms disjoint --output $@


# merge uberon + sources, reason & relax (EC -> SC)

tmp.owl: uberon_slice.owl sources_merged.owl
	robot merge --input uberon_slice.owl --input sources_merged.owl relax annotate --ontology-iri $(URIBASE)/$@ -o $@

# Make a json file for use in geneating ROBOT template
tmp.json: tmp.owl
	$(ROBOT) convert --input tmp.owl -f json -o tmp.json

# Build robot  template - with linkouts and prefLabels

../robot_templates/linkouts.tsv: tmp.json
	python ../scripts/gen_linkout_template.py $<

# generate OWL from template

linkouts.owl: tmp.owl ../robot_templates/linkouts.tsv
	robot template --template ../robot_templates/linkouts.tsv --input $< --prefix=OboInOwl:http://www.geneontology.org/formats/oboInOwl# -o $@

# Generate release file by  merging in OWL from template
aba_uberon.owl: linkouts.owl
	robot merge --input $< --input tmp.owl annotate --ontology-iri $(URIBASE)/$@ convert -f ofn -o $@

report.tsv: aba_uberon.owl
	robot query -i $< -f tsv -q ../sparql/aba_mapping_report.sparql $@

report.xlsx: report.tsv
	python3 ../scripts/mapping_spreadsheet_gen.py $< $@

# Compress for release to get below GitHub file size restrictions.
# aba-uberon.owl.gz: aba_uberon.owl
#	gzip $<

prepare_release: aba_uberon.owl
	cp $< ../../.






