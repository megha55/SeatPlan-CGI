CC = g++
CFLAG = -c -g # Compilation Flag
OFLAG = -o  # O/p Flag

# Header files
HEADER = header.h file-names.h
READ_INPUT_HEADER = read-input.h $(HEADER)
EXPAND_ROLLNO_HEADER = expand-rollno.h $(READ_INPUT_HEADER)
ARRANGE_ROLLNO_HEADER = arrange-rollno.h $(EXPAND_ROLLNO_HEADER)
SUBJECTWISE_ROLLNO_HEADER = subject-wise-rollno.h $(ARRANGE_ROLLNO_HEADER)
SEATPLAN_HEADER = seatplan.h $(HEADER)
REPORT_HEADER = report.h $(SEATPLAN_HEADER)
STRATEGY_HEADER = strategy.h $(REPORT_HEADER)

# Linking of object files
INPUT = RollNoDetails.in RoomDetails.in BranchDetails.in # input files
READ_INPUT = read-input.o #read-input-main.o # #read-input obj files
EXPAND_ROLLNO = $(READ_INPUT) expand-rollno.o #expand-rollno-main.o
ARRANGE_ROLLNO = $(EXPAND_ROLLNO) arrange-rollno.o #arrange-rollno-main.o
SUBJECTWISE_ROLLNO = $(ARRANGE_ROLLNO) subject-wise-rollno.o subject-wise-rollno-main.o
SEATPLAN = seatplan.o
REPORT = $(SEATPLAN) report.o branch-report.o room-report.o #report-main.o
STRATEGY = $(REPORT) strategy.o strategy-main.o

# All Targets
all: subject-wise-rollno-run strategy-run
#subject-wise-rollno-run
#expand-rollno-run
#subject-wise-rollno-run
# arrange-rollno-run
#read-input-run

read-input.o: read-input.cc $(READ_INPUT_HEADER)
	$(CC) $(CFLAG) read-input.cc

read-input-main.o: read-input-main.cpp $(READ_INPUT_HEADER)
	$(CC) $(CFLAG) read-input-main.cpp

read-input: $(READ_INPUT)
	$(CC) $(OFLAG) read-input $(READ_INPUT)

read-input-run: $(INPUT) read-input
	./read-input
	
expand-rollno.o: expand-rollno.cc $(EXPAND_ROLLNO_HEADER)
	$(CC) $(CFLAG) expand-rollno.cc

expand-rollno-main.o: expand-rollno-main.cpp $(EXPAND_ROLLNO_HEADER)
	$(CC) $(CFLAG) expand-rollno-main.cpp

expand-rollno: $(EXPAND_ROLLNO)
	$(CC) $(OFLAG) expand-rollno $(EXPAND_ROLLNO)

expand-rollno-run: $(INPUT) expand-rollno
	./expand-rollno
	
arrange-rollno.o: arrange-rollno.cc $(ARRANGE_ROLLNO_HEADER)
	$(CC) $(CFLAG) arrange-rollno.cc

arrange-rollno-main.o: arrange-rollno-main.cpp $(ARRANGE_ROLLNO_HEADER)
	$(CC) $(CFLAG) arrange-rollno-main.cpp

arrange-rollno: $(ARRANGE_ROLLNO)
	$(CC) $(OFLAG) arrange-rollno $(ARRANGE_ROLLNO)

arrange-rollno-run: $(INPUT) arrange-rollno
	./arrange-rollno
	
subject-wise-rollno.o: subject-wise-rollno.cc $(SUBJECTWISE_ROLLNO_HEADER)
	$(CC) $(CFLAG) subject-wise-rollno.cc

subject-wise-rollno-main.o: subject-wise-rollno-main.cpp $(SUBJECTWISE_ROLLNO_HEADER)
	$(CC) $(CFLAG) subject-wise-rollno-main.cpp

subject-wise-rollno: $(SUBJECTWISE_ROLLNO)
	$(CC) $(OFLAG) subject-wise-rollno $(SUBJECTWISE_ROLLNO)

subject-wise-rollno-run: $(INPUT) subject-wise-rollno
	./subject-wise-rollno
	
seatplan.o: seatplan.cc $(SEATPLAN_HEADER)
	$(CC) $(CFLAG) seatplan.cc

report.o: report.cc $(REPORT_HEADER)
	$(CC) $(CFLAG) report.cc

room-report.o: room-report.cc $(REPORT_HEADER)
	$(CC) $(CFLAG) room-report.cc

branch-report.o: branch-report.cc $(REPORT_HEADER)
	$(CC) $(CFLAG) branch-report.cc

report-main.o: report-main.cpp $(REPORT_HEADER)
	$(CC) $(CFLAG) report-main.cpp

report: $(REPORT)
	$(CC) $(OFLAG) report $(REPORT)

#report-run: $(INPUT) report
#	./report

strategy.o: strategy.cc $(STRATEGY_HEADER)
	$(CC) $(CFLAG) strategy.cc

strategy-main.o: strategy-main.cpp $(STRATEGY_HEADER)
	$(CC) $(CFLAG) strategy-main.cpp

strategy: $(STRATEGY)
	$(CC) $(OFLAG) strategy $(STRATEGY)

strategy-run: $(INPUT) strategy
	./strategy
	
clean:
	rm -f *.o *.out *.txt subject-wise-rollno strategy
#read-input expand-rollno arrange-rollno  report
	
#	*.html *.pdf *.csv report strategyValid
