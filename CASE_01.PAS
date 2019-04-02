program case_01;
uses crt;
var
   y:char;
   a,b,c,d,e,f,g,h,i,j:integer;
   x:String[80];
begin
   clrscr;
   {
   writeln('Input(1 Char) :> ');
   readln(y);
   case y of
   'a'..'z'     : writeln(y, ': Klein-Buchstabe');
   'A'..'Z'     : writeln(y, ': Gro·-Buchstabe');
   '0'..'9'     : writeln(y, ': Zahlen');
   '+'..'/'     : writeln(y, ': Rechen-Zeichen');
   'Ñ','î','Å','é','ô','ö'  : writeln(y, ': Umlaut');
   else
       writeln(y, ': Sonderzeichen');
   end;
   }
   a:=0;
   b:=0;
   c:=0;
   d:=0;
   e:=0;
   f:=0;
   g:=0;
   h:=0;
   j:=0;
   writeln('Satz eingeben :> ');
   readln(x);
   for i:=1 to length(x) do
   begin
        case x[i] of
        ' '          : g:=g+1;
        'a'..'z'     : a:=a+1;
        'A'..'Z'     : b:=b+1;
        '0'..'9'     : c:=c+1;
        '+'..'/'     : d:=d+1;
        'Ñ','î','Å','é','ô','ö'  : e:=e+1;
        else
        f:=f+1;
        end;
   end;
   h:=g+1;
   writeln('------------------');
   writeln('LÑnge des Satzes : ',length(x));
   writeln('Woerter :', h);
   writeln('------------------');
   writeln('Leerzeichen :', g);
   writeln('Klein-Buchstaben : ', a);
   writeln('Gro·-Buchstaben : ', b);
   writeln('Zahlen : ', c);
   writeln('Rechen-Zeichen :', d);
   writeln('Umlaut :', e);
   writeln('Sonderzeichen :', f);
   readln;
end.