program array_02;
uses crt, Dos;
type
   feldtype=array[1..30000] of integer;
var
   feld:feldtype;
   i,zahl:integer;

var
  h1, m1, s1, hund1,
  h2, m2, s2, hund2 : Word;
function LeadingZero(w : Word) : String;
var
  s : String;
begin
  Str(w:0,s);
  if Length(s) = 1 then
    s := '0' + s;
  LeadingZero := s;
end;

function output(var f:feldtype): Integer;
var
  maxval:integer;
begin
     maxval:=f[1];
     for i:=2 to 30000 do
     begin
          if (f[i] > maxval) then maxval:=f[i];
     end;
     output:=maxval;
end;

procedure Zeit;
var
   x:integer;

begin
     x:=hund2-hund1;
     x:=x*10;
     if (s2 > s1) then
     begin
          s2:=s2-1;
          x:=x+1000;
     end;
     writeln('In: ', x,'(ms)');

end;

begin
     clrscr;
     randomize;
     for i:=1 to 30000 do feld[i]:=random(20000)+1;
     GetTime(h1,m1,s1,hund1);
     writeln('Start:', h1, ':', m1 ,':', s1, ':', hund1);
     writeln('Max:', output(feld) );
     GetTime(h2,m2,s2,hund2);
     writeln('Ende: ', h2, ':', m2 ,':', s2, ':', hund2);
     Zeit;
     readln;
end.