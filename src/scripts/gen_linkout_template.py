import json
from ruamel.yaml import YAML
from string import Template
import pandas as pd

f = open('../ontology/tmp.json', 'r')
j = json.loads(f.read())
g = j['graphs'][0]
conf = open('../config/db_graph_atlas.yaml', 'r')
yaml = YAML(typ='safe')
mapping = yaml.load(conf.read())
link = Template("http://atlas.brain-map.org/atlas?atlas="
                "$atlas_id#structure=$structure_id")

seed = {'ID': 'ID',
        'xref': 'A OboInOwl:hasDbXref',
        'prefLabel': 'A skos:prefLabel'}

tab = [seed]

for n in g['nodes']:
    if 'type' in n.keys() and n['type'] == 'CLASS':
        lstat = True
        if 'meta' in n.keys() and 'basicPropertyValues' in n['meta'].keys():
            for bpv in n['meta']['basicPropertyValues']:
                for k, v in mapping.items():
                    if bpv['pred'] == 'http://purl.obolibrary.org/obo/%s#identifier' % k:
                        for a in v['atlases']:
                            tab.append({'ID': n['id'],
                                        'xref': link.substitute(atlas_id=a['id'],
                                                                structure_id=bpv['val']),
                                        'prefLabel': ' '.join([n['lbl'],
                                                               ' (',
                                                               v['species'],
                                                               ')'])})
                        lstat = False
        if lstat and 'lbl' in n.keys():
            tab.append({'ID': n['id'], 'xref': '', 'prefLabel': n['lbl']})


r_temp = pd.DataFrame.from_records(tab)
r_temp.to_csv('../robot_templates/linkouts.tsv', sep='\t', index=False)

