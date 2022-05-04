JOBS = mba dmba

ROBOT = robot

OLD_MAPPINGS = $(patsubst %, %_old_mapping.tsv, $(JOBS))
SOURCE_TEMPLATES = $(patsubst %, ../robot_templates/%_CCF_to_UBERON_source.tsv, $(JOBS))

all: $(SOURCE_TEMPLATES)

# download bridges

uberon-bridge-to-dmba.obo:
	curl -o uberon-bridge-to-dmba.obo "https://raw.githubusercontent.com/obophenotype/uberon/master/src/ontology/bridge/uberon-bridge-to-dmba.obo"

uberon-bridge-to-mba.obo:
	curl -o uberon-bridge-to-mba.obo "https://raw.githubusercontent.com/obophenotype/uberon/master/src/ontology/bridge/uberon-bridge-to-mba.obo"

%_old_mapping.tsv: uberon-bridge-to-%.obo
	$(ROBOT) query --input $< --query ../sparql/bridge_mappings.sparql $@
#.PRECIOUS: %_old_mapping.tsv

../robot_templates/%_CCF_to_UBERON_source.tsv: %_old_mapping.tsv  ../robot_templates/%_CCF_to_UBERON.tsv
	python ../scripts/mapping_source_template_generator.py -i1 $< -i2 $(word 2, $^) -o $@

