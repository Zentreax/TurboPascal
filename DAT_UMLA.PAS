program replacechar;
uses crt;
var
   datei,datei2,name2:text;
   i:integer;
   zeilenstring,ausgabe:String;
begin
     {writeln('Name der Datei:');
     readln(name); }
     clrscr;

     {Datei zum Lesen ”ffnen}
     assign(datei, 'Umlaute.txt');
     reset(datei);
     {Output Datei zum schreiben ”ffnen}
     assign(datei2, 'Output.txt');
     rewrite(datei2);

     while not eof(Datei) do
     begin
          {String auf 0 setzen}
          ausgabe:='';
          {Datei lesen}
          readln(datei, zeilenstring);
          for i:=1 to length(zeilenstring) do
          begin
               case zeilenstring[i] of
                    '„':ausgabe:=ausgabe + 'ae';
                    '”':ausgabe:=ausgabe + 'oe';
                    '':ausgabe:=ausgabe + 'ue';
                    '':ausgabe:=ausgabe + 'Ae';
                    '™':ausgabe:=ausgabe + 'Oe';
                    'š':ausgabe:=ausgabe + 'Ue';
                    'á':ausgabe:=ausgabe + 'ss';
                    else ausgabe:=ausgabe + zeilenstring[i];
               end;
          end;
          {Schreiben in die Datei}
          writeln(datei2, ausgabe);
     end;
     close(datei2);
     close(datei);
     writeln('Schaue in die Output.txt');
     readln;
end.
