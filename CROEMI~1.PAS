program roemischezahlen;
uses crt;
var
   ausgabe,i,y:integer;
   datum,x:String;
begin
     clrscr;

     {repeat}
           writeln('Jahreszahl? (0<zahl>5000):> ');
           readln(x);
     {until (0<x) and (x<5000);}

     ausgabe:=0;

     y:=length(x);
     i:=1;
     while i<=y do
     begin
          case x[i] of
          'M': ausgabe:=ausgabe+1000;
          'C': if (x[i+1] = 'M') then
               begin
                 ausgabe:=ausgabe+900;
                 i:=i+1;
               end
               else
               if(x[i+1] = 'D') then
                 begin
                   ausgabe:=ausgabe+400;
                   i:=i+1;
                 end
                 else
                   ausgabe:=ausgabe+100;
          'D': ausgabe:=ausgabe+500;
          'X': if (x[i+1] = 'C') then
               begin
                 ausgabe:=ausgabe+90;
                 i:=i+1;
               end
               else
               if(x[i+1] = 'L') then
                 begin
                   ausgabe:=ausgabe+40;
                   i:=i+1;
                 end
                 else
                   ausgabe:=ausgabe+10;
          'L': ausgabe:=ausgabe+50;
          'V': ausgabe:=ausgabe+5;
          'I': if (x[i+1] = 'X') then
               begin
                 ausgabe:=ausgabe+9;
                 i:=i+1;
               end
               else
                 if(x[i+1] = 'V') then
                 begin
                   ausgabe:=ausgabe+4;
                   i:=i+1;
                 end
                 else
                   ausgabe:=ausgabe+1;
          end;
          i:=i+1;
     end;

     writeln(ausgabe);
     readln;
end.