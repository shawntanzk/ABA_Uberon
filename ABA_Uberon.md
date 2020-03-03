<span dir="ltr">Allen Brain Atlas Ontologies and Uberon</span>
==============================================================

<span dir="ltr"></span>

<span dir="ltr">Uberon developers have converted [<span
class="underline">Allen JSON hierarchies (structure graphs) for human
and mouse
brains</span>](http://help.brain-map.org/display/api/Atlas+Drawings+and+Ontologies#AtlasDrawingsandOntologies-StructuresAndOntologies)
to [<span class="underline">OBO/OWL
ontologies</span>](https://github.com/obophenotype/uberon/tree/master/source-ontologies)
and mapped these to Uberon (see [<span class="underline">Uberon bridge
files</span>](http://uberon.github.io/downloads.html#bridge) & also
xrefs in Uberon). The ontologised JSON files are available for download
from GitHub, but are not released as official OBO ontologies (and so are
not available via ontology search and browsing services such as the
[<span class="underline">Ontology Lookup
Service</span>](https://www.ebi.ac.uk/ols)). They have not been
maintained since they were first derived (in 2015), and so may have
become out of date in some cases.</span>

<span dir="ltr"></span>

**<span dir="ltr">Mapping Table</span>**

<table>
<thead>
<tr class="header">
<th><strong><span dir="ltr">Ontology (OBO)</span></strong></th>
<th><strong><span dir="ltr">Uberon bridge ontology</span></strong></th>
<th><span dir="ltr"><strong>Allen Ontology ID</strong></span></th>
<th><strong><span dir="ltr">Ontology name (Allen)</span></strong></th>
<th><strong><span dir="ltr">Allen StructureGraph ID</span></strong></th>
<th><strong><span dir="ltr">Atlases</span></strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><span dir="ltr"><a href="https://github.com/obophenotype/uberon/blob/master/source-ontologies/allen-mba.obo"><span class="underline">allen-mba.obo</span></a></span></td>
<td><span dir="ltr"><a href="http://purl.obolibrary.org/obo/uberon/bridge/uberon-bridge-to-mba.owl"><span class="underline">bridge/uberon-bridge-to-mba.owl</span></a> (<a href="http://purl.obolibrary.org/obo/uberon/bridge/uberon-bridge-to-mba.obo"><span class="underline">.obo</span></a>)</span></td>
<td><span dir="ltr">1</span></td>
<td><span dir="ltr">"Mouse Brain Atlas"</span></td>
<td><span dir="ltr"><a href="http://api.brain-map.org/api/v2/structure_graph_download/1.json"><span class="underline">1</span></a></span></td>
<td><p><span dir="ltr"><a href="http://atlas.brain-map.org/atlas?atlas=602630314"><span class="underline">602630314</span></a> ("Adult Mouse, 3D Coronal");</span></p>
<p><span dir="ltr"> <a href="http://atlas.brain-map.org/atlas?atlas=1"><span class="underline">1</span></a> ("Mouse, P56, Coronal");</span></p>
<p><span dir="ltr"> <a href="http://atlas.brain-map.org/atlas?atlas=2"><span class="underline">2</span></a> ("Mouse, P56, Sagittal")</span></p></td>
</tr>
<tr class="even">
<td><span dir="ltr"><a href="https://github.com/obophenotype/uberon/blob/master/source-ontologies/allen-dmba.obo"><span class="underline">allen-dmba.obo</span></a></span></td>
<td><span dir="ltr"><a href="http://purl.obolibrary.org/obo/uberon/bridge/uberon-bridge-to-dmba.owl"><span class="underline">bridge/uberon-bridge-to-dmba.owl</span></a> (<a href="http://purl.obolibrary.org/obo/uberon/bridge/uberon-bridge-to-dmba.obo"><span class="underline">.obo</span></a>)</span></td>
<td><span dir="ltr">12</span></td>
<td><span dir="ltr">"Developing Mouse Brain Atlas"</span></td>
<td><span dir="ltr"><a href="http://api.brain-map.org/api/v2/structure_graph_download/17.json"><span class="underline">17</span></a></span></td>
<td><p><span dir="ltr"><a href="http://atlas.brain-map.org/atlas?atlas=181276165"><span class="underline">181276165</span></a> ("Developing Mouse, P56")</span></p>
<p><span dir="ltr">181276164 ...</span></p></td>
</tr>
<tr class="odd">
<td><span dir="ltr"><a href="https://github.com/obophenotype/uberon/blob/master/source-ontologies/allen-hba.obo"><span class="underline">allen-hba.obo</span></a></span></td>
<td><span dir="ltr"><a href="http://purl.obolibrary.org/obo/uberon/bridge/uberon-bridge-to-hba.owl"><span class="underline">bridge/uberon-bridge-to-hba.owl</span></a> (<a href="http://purl.obolibrary.org/obo/uberon/bridge/uberon-bridge-to-hba.obo"><span class="underline">.obo</span></a>)</span></td>
<td><span dir="ltr">7</span></td>
<td><span dir="ltr">"Human Brain Atlas"</span></td>
<td><span dir="ltr"><a href="http://api.brain-map.org/api/v2/structure_graph_download/10.json"><span class="underline">10</span></a></span></td>
<td><span dir="ltr"><a href="http://atlas.brain-map.org/atlas?atlas=265297125"><span class="underline">265297125</span></a> ("Human Brain Atlas Guide ")</span></td>
</tr>
<tr class="even">
<td><p><span dir="ltr"></span></p>
<p><span dir="ltr"><span class="underline">allen-dhba.obo</span></span></p>
<p><span dir="ltr"></span></p></td>
<td><span dir="ltr"><a href="http://purl.obolibrary.org/obo/uberon/bridge/uberon-bridge-to-dhba.owl"><span class="underline">bridge/uberon-bridge-to-dhba.owl</span></a> (<a href="http://purl.obolibrary.org/obo/uberon/bridge/uberon-bridge-to-dhba.obo"><span class="underline">.obo</span></a>)</span></td>
<td><span dir="ltr">11</span></td>
<td><span dir="ltr">"Developing Human Brain Atlas"</span></td>
<td><span dir="ltr"><a href="http://api.brain-map.org/api/v2/structure_graph_download/16.json"><span class="underline">16</span></a></span></td>
<td><p><span dir="ltr"><a href="http://atlas.brain-map.org/atlas?atlas=138322605"><span class="underline">138322605</span></a> ("Human, 34 years, Cortex - Gyral")</span></p>
<p><span dir="ltr"><a href="http://atlas.brain-map.org/atlas?atlas=265297126"><span class="underline">265297126</span></a> ("Human, 34 years, Cortex - Mod. Brodmann")</span></p>
<p><span dir="ltr"><a href="http://atlas.brain-map.org/atlas?atlas=3"><span class="underline">3</span></a> ("Human, 21 pcw")</span></p>
<p><span dir="ltr"><a href="http://atlas.brain-map.org/atlas?atlas=3"><span class="underline">287730656</span></a> ("Human, 21 pcw - Brainstem")</span></p>
<p><span dir="ltr"><a href="http://atlas.brain-map.org/atlas?atlas=138322603"><span class="underline">138322603</span></a> ("Human, 15 pcw")</span></p></td>
</tr>
<tr class="odd">
<td><span dir="ltr"><a href="https://github.com/obophenotype/uberon/blob/master/source-ontologies/allen-pba.obo"><span class="underline">allen-pba.obo</span></a></span></td>
<td><span dir="ltr"><a href="http://purl.obolibrary.org/obo/uberon/bridge/uberon-bridge-to-pba.owl"><span class="underline">bridge/uberon-bridge-to-pba.owl</span></a> (<a href="http://purl.obolibrary.org/obo/uberon/bridge/uberon-bridge-to-pba.obo"><span class="underline">.obo</span></a>)</span></td>
<td><span dir="ltr">4</span></td>
<td><span dir="ltr">"Non-Human Primate Brain Atlas"</span></td>
<td><span dir="ltr"><a href="http://api.brain-map.org/api/v2/structure_graph_download/8.json"><span class="underline">8</span></a></span></td>
<td><span dir="ltr">?</span></td>
</tr>
</tbody>
</table>

<span dir="ltr">Derived from Allen mapping tables here [<span
class="underline">http://help.brain-map.org/display/api/Atlas+Drawings+and+Ontologies</span>](http://help.brain-map.org/display/api/Atlas+Drawings+and+Ontologies)</span>

<span dir="ltr">Using the Uberon bridge files, we can programatically
derive ontology files in which the ABA terms are classified under terms
from Uberon.</span>

<span dir="ltr"></span>

<span dir="ltr">Unlike node IDs in structureGraphs, the ontology
versions of the ABA StuctureGraphs provide unambiguous identifiers
(namespaced OBO / OWL URL) to refer to Allen brain regions. The ontology
versions can also be used to:</span>

<span dir="ltr"></span>

1.  <span dir="ltr">Define cell types ontology terms precisely by
    > referencing spatial regions on standard atlases.</span>

2.  <span dir="ltr">Annotate cell types precisely by referencing spatial
    > regions on standard atlases.</span>

3.  <span dir="ltr">Map between species using Uberon.</span>

<span dir="ltr"></span>

<span dir="ltr">We could also potentially use these ontologies and links
to atlases to enhance information and links displayed for Uberon terms
in ontology browsing tools such as the Ontology Lookup Service. For
example, *we might display thumbnail images of brain regions, linked to
the relevant atlas at Allen.* This would be extremely useful to experts
wanting to use Uberon to annotate their data or wanting a visual
reference for existing annotations. To realize this, we need recipes for
links and for thumbnails. The former already work well, e.g. Uberon
[<span class="underline">CA3 field of the
hippocampus</span>](https://www.ebi.ac.uk/ols/ontologies/uberon/terms?iri=http://purl.obolibrary.org/obo/UBERON_0003883)
is linked to: MBA:463. This corresponds to an id in **StructureGraph 1**
which used by Allen reference atlas [<span
class="underline">602630314</span>](http://atlas.brain-map.org/atlas?atlas=602630314#structure=463).
Using this information we can use MBA:463 to roll the link: [<span
class="underline">http://atlas.brain-map.org/atlas?atlas=602630314\#structure=463</span>](http://atlas.brain-map.org/atlas?atlas=602630314#structure=463).</span>

<span dir="ltr"></span>

<span dir="ltr"></span>
