Program dateii;
uses crt;
var
   datei1,datei2:text;
   i,zahl:integer;
   zeilestring,name1,name2:String;
begin
     clrscr;
     TextColor(red);
     writeln('Um wie viel soll es nach rechts verschoben werden?');
     readln(zahl);
     writeln('Dateiname? (Lesen)');
     readln(name1);
     writeln('Dateiname? (Schreiben)');
     readln(name2);

     assign(datei1, name1);
     reset(datei1);
     assign(datei2, name2);
     rewrite(datei2);
     while not eof(Datei1) do
     begin
          readln(datei1, zeilestring);
          TextColor(green);
          writeln(zeilestring);
          for i:=1 to length(zeilestring) do
          begin
              { if (ord(zeilestring[i]) >= 65) and (ord(zeilestring[i]) <= 90) or
                  (ord(zeilestring[i]) >= 97) and (ord(zeilestring[i]) <= 122) then }
                  zeilestring[i]:=chr(ord(zeilestring[i])+zahl);
          end;
          writeln(datei2, zeilestring);
     end;
     close(datei1);
     close(datei2);
     ReadKey;
end.