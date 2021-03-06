#include "strategy.h"

Strategy :: Strategy()
{
    ContentType();
}

void Strategy :: Head()
{
    HeadStart();
    Title("Strategy");
    CSS();
    HeadEnd();
}

void Strategy :: BodyContent()
{
    cout << "<div id = \"body\" class = \"center\">" << endl;
         
    Header();
    
    cout << "<div id = \"content\" class = \"content\">" << endl
    
         << "<form name=\"strategy\" action=\"Code/subject-wise-rollno\" method=\"post\">"
         
         << "<br> <br><h2> Select Strategy </h2> <br> <br>"
         
         << "<table align = \"center\" cellspacing = \"10\" cellpadding = \"10\">"
         
         << "<tr> <th> A </th> <th> B </th> <th> C </th> <th> D </th> </tr>"
         
         << "<tr> "
         
         << " <td> Branch 1 <br> Branch 1 <br> Branch 1 <br> Branch 1</td> "
         
         << " <td> Branch 1 <br> Branch 2 <br> Branch 1 <br> Branch 2 </td> "
         
         << " <td>  Branch 1 <br> Branch 2 <br> Branch 3 <br> Branch 1</td> "
         
         << " <td>  Branch 1 <br> Branch 2 <br> Branch 3 <br> Branch 4</td> "
         
         << "</tr>"
         
         << "</table>"
         
         << "<br><br>";
        cout << "Select Option <select name=\"Strategy\">"; 
        for(i = 65; i < 69; i++)
        {
            char a = i;
            cout << "<option value=\""
                 << a << "\"";
            cout << " > "
                 << a << "</option>";
        }
        cout << "</select>";
    
    cout << "<br><br><input type=\"submit\" value=\"NEXT\">"
         
         << "</form>"
         
         << "</div>" << endl
         << "</div>" << endl;
}

void Strategy :: Body()
{
    BodyStart();
    BodyContent();
    BodyEnd();
}

void Strategy :: Main()
{
    ReadRoomDetails :: Main();
    HTMLStart();    
    
    Head();
    Body();
    
    HTMLEnd();
}
