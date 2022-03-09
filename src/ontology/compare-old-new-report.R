# Import reports
old_report <- read.table(file = '/Users/shawntan/documents/GitHub/ABA_Uberon/src/ontology/report/old-report.tsv')
new_report <- read.table(file = '/Users/shawntan/documents/GitHub/ABA_Uberon/src/ontology/report.tsv')

require(dplyr)

diff_old_new <- anti_join(old_report, new_report)
diff_old_new <- anti_join(new_report, old_report)

write.table(diff_old_new, file='/Users/shawntan/documents/GitHub/ABA_Uberon/src/ontology/report/old-to-new.tsv', quote=FALSE, sep='\t')
write.table(diff_new_old, file='/Users/shawntan/documents/GitHub/ABA_Uberon/src/ontology/report/new-to-old.tsv', quote=FALSE, sep='\t')
