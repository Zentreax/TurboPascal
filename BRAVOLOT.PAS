program lotto;
uses crt;
var
   lottofeld : array[1..49] of boolean;
   anzahl,i,zahl:integer;
begin
     clrscr;
     for i:=1 to 49 do lottofeld[i]:=false;
     anzahl:=0;
     randomize;
     repeat
           zahl:=random(48)+1;
           if not (lottofeld[zahl]) then
           begin
                anzahl:=anzahl+1;
                lottofeld[zahl]:=true;
           end;
     until anzahl>=6;
     for i:=1 to 49 do
     begin
          if not (lottofeld[i]) then write(i:4)
          else write('X':4);
          if i mod 7 = 0 then writeln;
     end;
     writeln;
     writeln('Gezogene Zahlen:');
     for i:=1 to 49 do
     if (lottofeld[i]) then write(i:4   );
     readln;
end.