# ABA_Uberon

This repository contains an application ontology built by combining ontologised versions of the Allan Brain Atlas StructureGraphs mapped to Uberon. 

For deails of the source files, their origins and their relationships, please see [ABA_Uberon.md](ABA_Uberon.md).

**Product:**  [src/ontology/aba-uberon.owl.gz](src/ontology/aba-uberon.owl.gz)

### To view in [Protege](https://protege.stanford.edu/products.php#desktop-protege):

configure rendering as follows: 

![image](https://user-images.githubusercontent.com/112839/75909496-1ddc8600-5e44-11ea-8ee4-4a3027dbb823.png)
![image](https://user-images.githubusercontent.com/112839/75909444-0a311f80-5e44-11ea-9078-a02d6eafbc75.png)


### Example content: 

![image](https://user-images.githubusercontent.com/112839/75909404-f5ed2280-5e43-11ea-94fa-464141f06f4f.png)
![image](https://user-images.githubusercontent.com/112839/75911798-08695b00-5e48-11ea-8195-01302f4302f1.png)

Links go straight to the relevant page on the Allen Brain Atlas, e.g. the above link goes to:

![image](https://user-images.githubusercontent.com/112839/75910682-2e8dfb80-5e46-11ea-85a8-904a1377071f.png)
http://atlas.brain-map.org/atlas?atlas=265297125#structure=4313


### Roadmap

Aims: 

 - To provide a browsable, integrated ontology combining Uberon and ontologised versions of the ABA structueGraphs, with links to the relevant Allen Brain Atlas pages and (if possible, thumbnail preview images)
 - To provide mappings in reviewable form - as tables.
 - To provide reports of which nodes from the structureGraphs have mappings and which do not.
 
MVP: Combined ontology with ABA links and modified labels - browsable in Protege, built via scripts and Make.

Phase2: Ontology Lookup Service local instance; reports.

For more detailed plans for further development, please see the Epics columns here: https://github.com/obophenotype/ABA_Uberon/projects/1




