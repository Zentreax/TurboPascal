program int_array;
uses crt;
var
   feld : array[1..20] of integer;
   kleinste,x,maxval,i,zahl:integer;
   durchschnitt:real;
begin
     clrscr;
     randomize;
     for i:=1 to 20 do feld[i]:=random(98)+1;
     for i:=1 to 20 do write(feld[i]:4);
     kleinste:=feld[1];
     maxval:=feld[20];
     {Kleinste suchen}
     for i:=2 to 20 do
     begin
          if(feld[i] < kleinste) then kleinste:=feld[i];
     end;
     {Gr”áte suchen}
     for i:=20 downto 1 do
     begin
          if(feld[i] > maxval) then maxval:=feld[i];
     end;
     {Durchschnitt berechnen}
     x:=feld[1];
     for i:=2 to 20 do
     begin
          x:=x+feld[i];
     end;
     durchschnitt:=x/20;
     writeln;
     writeln('Kleinste Zahl: ', kleinste);
     writeln('Gr”áte Zahl: ', maxval);
     writeln('Durschnitt: ',durchschnitt);
     readln;
end.
