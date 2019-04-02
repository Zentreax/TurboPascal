 program binary;
 uses crt;
 var
    i,y,x,t,z:integer;
    wort,yikes:string[20];
 begin
      clrscr;
      writeln('Wort eingeben:');
      readln(wort);
      yikes:=wort;
      i:= 1;
      y:= length(wort);

      for i:=1 to y do
      begin
      t:= ord(wort[i]);
      z:= 32;
      if t > 96 then t:= t-z;
      write(chr(t),'=', ord(t), ' ');

      yikes[i]:=chr(t);
      writeln(yikes);
      end;
 readln;
 end.
