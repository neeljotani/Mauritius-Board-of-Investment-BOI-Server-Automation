


su – db2inst1

. $HOME/sqllib/db2profile
db2 force applications all

db2 terminate

db2stop

db2licd -end      # run at each physical partition
exit

