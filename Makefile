CC      =   g++     #   
CFLAG   =   -c      # Compilation Flag
OFLAG   =   -o      # O/p Flag
LCGICC  =   -lcgicc # cgicc lib flag

#---------------------------------------------------------------------------
# Header files(pages)
FILENAMES           =   file-names.h
HEADER              =   header.h $(FILENAMES)
HTMLTAGS_HEADER     =   htmltags.h $(HEADER)
HOME_HEADER         =   home.h $(HTMLTAGS_HEADER)
BRANCH_HEADER       =   branchdetails.h $(HTMLTAGS_HEADER)
ROLLNO_HEADER       =   rollnodetails.h $(HTMLTAGS_HEADER) #$(READBRANCH_HEADER)
ROOM_HEADER         =   roomdetails.h $(HTMLTAGS_HEADER)
STRATEGY_HEADER     =   strategy.h $(HTMLTAGS_HEADER)
VALIDATION_HEADER   =   validation.h $(HTMLTAGS_HEADER)
EXAM_HEADER         =   examdetails.h $(HTMLTAGS_HEADER)
REPORT_HEADER       =   report.h $(HTMLTAGS_HEADER)

#---------------------------------------------------------------------------
# Header (CSS)
CSS_HEADER = css.h $(HEADER)

# Linking Object Files
HTMLTags    =   htmltags.o # htmltags-main.o
Home        =   $(HTMLTags) home.o home-main.o
CSS         =   css.o css-main.o
Branch      =   $(HTMLTags) branchdetails.o branchdetails-main.o
RollNo      =   $(HTMLTags) readbranchdetails.o rollnodetails.o rollnodetails-main.o
Room        =   $(HTMLTags) readrollnodetails.o roomdetails.o roomdetails-main.o
Strategy    =   $(HTMLTags) readroomdetails.o strategy.o strategy-main.o
Validation  =   $(HTMLTags) validation.o validation-main.o
Exam        =   $(HTMLTags) examdetails.o examdetails-main.o
Report      =   $(HTMLTags) report.o report-main.o

#---------------------------------------------------------------------------
# All Targets
all: home.css home.html branchdetails.html rollnodetails.html roomdetails.html strategy.html validation.html examdetails.html report.html
#---------------------------------------------------------------------------
htmltags.o: htmltags.cc $(HEADER)
	$(CC) $(CFLAG) htmltags.cc

htmltags-main.o: htmltags-main.cpp $(HEADER)
	$(CC) $(CFLAG) htmltags-main.cpp

htmltags: $(HTMLTags)
	$(CC) $(OFLAG) htmltags $(HTMLTags)

htmltags-run: htmltags
	./htmltags
#---------------------------------------------------------------------------
home.o: home.cc $(HOME_HEADER)
	$(CC) $(CFLAG) home.cc

home-main.o: home-main.cpp $(HOME_HEADER)
	$(CC) $(CFLAG) home-main.cpp

home.html: $(Home)
	$(CC) $(OFLAG) home.html $(Home)

home-run: home.html
	./home.html
#---------------------------------------------------------------------------
css.o: css.cc $(CSS_HEADER)
	$(CC) $(CFLAG) css.cc

css-main.o: css-main.cpp $(CSS_HEADER)
	$(CC) $(CFLAG) css-main.cpp

home.css: $(CSS)
	$(CC) $(OFLAG) home.css $(CSS)

css-run: home.css
	./home.css
#---------------------------------------------------------------------------
branchdetails.o: branchdetails.cc $(BRANCH_HEADER)
	$(CC) $(CFLAG) branchdetails.cc

branchdetails-main.o: branchdetails-main.cpp $(BRANCH_HEADER)
	$(CC) $(CFLAG) branchdetails-main.cpp

branchdetails.html: $(Branch)
	$(CC) $(OFLAG) branchdetails.html $(Branch)

branch-run: branchdetails.html
	./branchdetails.html
#---------------------------------------------------------------------------
#readbranchdetails.o: readbranchdetails.cc $(READBRANCH_HEADER) $(BRANCH_HEADER)
#	$(CC) $(CFLAG) readbranchdetails.cc $(LCGICC)

#readbranchdetails-main.o: readbranchdetails-main.cpp $(READBRANCH_HEADER) $(BRANCH_HEADER)
#	$(CC) $(CFLAG) readbranchdetails-main.cpp

#readbranchdetails: $(ReadBranchMain)
#	$(CC) $(OFLAG) readbranchdetails $(ReadBranchMain) $(LCGICC)
#---------------------------------------------------------------------------
rollnodetails.o: rollnodetails.cc $(ROLLNO_HEADER)
	$(CC) $(CFLAG) rollnodetails.cc $(LCGICC)

readbranchdetails.o: readbranchdetails.cc $(ROLLNO_HEADER)
	$(CC) $(CFLAG) readbranchdetails.cc $(LCGICC)

rollnodetails-main.o: rollnodetails-main.cpp $(ROLLNO_HEADER)
	$(CC) $(CFLAG) rollnodetails-main.cpp $(LCGICC)

rollnodetails.html: $(RollNo)
	$(CC) $(OFLAG) rollnodetails.html $(RollNo) $(LCGICC)

rollno-run: rollnodetails.html
	./rollnodetails.html
#---------------------------------------------------------------------------
roomdetails.o: roomdetails.cc $(ROOM_HEADER)
	$(CC) $(CFLAG) roomdetails.cc $(LCGICC)

readrollnodetails.o: readrollnodetails.cc $(ROOM_HEADER)
	$(CC) $(CFLAG) readrollnodetails.cc $(LCGICC)

roomdetails-main.o: roomdetails-main.cpp $(ROOM_HEADER)
	$(CC) $(CFLAG) roomdetails-main.cpp $(LCGICC)

roomdetails.html: $(Room)
	$(CC) $(OFLAG) roomdetails.html $(Room) $(LCGICC)

room-run: rollnodetails.html
	./rollnodetails.html
#---------------------------------------------------------------------------
strategy.o: strategy.cc $(STRATEGY_HEADER)
	$(CC) $(CFLAG) strategy.cc $(LCGICC)

readroomdetails.o: readroomdetails.cc $(STRATEGY_HEADER)
	$(CC) $(CFLAG) readroomdetails.cc $(LCGICC)

strategy-main.o: strategy-main.cpp $(STRATEGY_HEADER)
	$(CC) $(CFLAG) strategy-main.cpp $(LCGICC)

strategy.html: $(Strategy)
	$(CC) $(OFLAG) strategy.html $(Strategy) $(LCGICC)

strategy-run: strategy.html
	./strategy.html
#---------------------------------------------------------------------------
validation.o: validation.cc $(VALIDATION_HEADER)
	$(CC) $(CFLAG) validation.cc

validation-main.o: validation-main.cpp $(VALIDATION_HEADER)
	$(CC) $(CFLAG) validation-main.cpp

validation.html: $(Validation)
	$(CC) $(OFLAG) validation.html $(Validation)

validation-run: validation.html
	./validation.html
#---------------------------------------------------------------------------
examdetails.o: examdetails.cc $(EXAM_HEADER)
	$(CC) $(CFLAG) examdetails.cc

examdetails-main.o: examdetails-main.cpp $(EXAM_HEADER)
	$(CC) $(CFLAG) examdetails-main.cpp

examdetails.html: $(Exam)
	$(CC) $(OFLAG) examdetails.html $(Exam)

exam-run: examdetails.html
	./examdetails.html
#---------------------------------------------------------------------------
report.o: report.cc $(REPORT_HEADER)
	$(CC) $(CFLAG) report.cc

report-main.o: report-main.cpp $(REPORT_HEADER)
	$(CC) $(CFLAG) report-main.cpp

report.html: $(Report)
	$(CC) $(OFLAG) report.html $(Report)

report-run: report.html
	./report.html
#---------------------------------------------------------------------------

clean:
	rm *.html *.o
