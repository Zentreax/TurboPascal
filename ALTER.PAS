program alter;
uses crt,dos;
var
   x,y,z:integer;
   {z:longint;}
   year,month,day,dayofweek:word;
   data:boolean;
begin
     clrscr;
    { getDate(year, month, day, dayofweek); }

     {-------------}

    { writeln('Alter :> ');
     readln(x);
     repeat
           if (x > 17) then break;
           writeln('Zu jung.');
           writeln('Alter :> ');
           readln(x);
     until (x > 17) and (x < 120);
     if (x > 17) then writeln('Willkommen.');

     repeat
           writeln('Geburtsdatum :> ');
           readln(x);
     until (x >= year-105) and (x <= year);
     writeln('Willkommen.'); }

     {-------------}

     repeat
           data:=true;
           writeln('GeburtsTAG(DD) :> ');
           readln(x);
           writeln('GeburtsMONAT(MM)');
           readln(y);
           writeln('GeburtsJAHR(YYYY)');
           readln(z);
           if not (x in [01..31]) then data:=false;
           if not (y in [01..12]) then data:=false;
           if not (z >= 1940) and (z <= 2000) then data:=false;
           {[-- Alle Monate und verschiedene Tage --]}
           if y in [1,3,5,7,8,10,12] then
              if (x > 31) then data:=false;
           if y in [4,6,9,11] then
              if (x > 30) then data:=false;
           if y in [2] then
              if (z mod 4 = 0) then
              begin
                  if (x > 29) then data:=false
              end
              else
                 if (x > 28) then data:=false;

     until data;
     readln;
end.
