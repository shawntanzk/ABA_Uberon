# Import reports
old_report <- read.table(file = '/Users/shawntan/documents/GitHub/ABA_Uberon/src/ontology/report/old-report.tsv')
new_report <- read.table(file = '/Users/shawntan/documents/GitHub/ABA_Uberon/src/ontology/report.tsv')

install.packages("sqldf")

require(sqldf)

diff_old_new <- sqldf('SELECT * FROM old_report EXCEPT SELECT * FROM new_report')
diff_new_old <- sqldf('SELECT * FROM new_report EXCEPT SELECT * FROM old_report')

write.table(diff_old_new, file='/Users/shawntan/documents/GitHub/ABA_Uberon/src/ontology/report/old-to-new.tsv', quote=FALSE, sep='\t')
write.table(diff_new_old, file='/Users/shawntan/documents/GitHub/ABA_Uberon/src/ontology/report/new-to-old.tsv', quote=FALSE, sep='\t')
