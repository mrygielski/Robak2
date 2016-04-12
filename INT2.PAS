Uses Crt, Graph, Help, RobakTpu;

Var
   X, Y, Cz, P, Plansza, Mx, My, NrR, NrL : Integer;
   F : File of Integer;
   R : Integer; {ZMIENNE DO PUNKTOW, REKORDU, CZASU I PLANSZ}
   Ff : File of Integer;

Procedure Panel;
Begin
     Assign(fF,'ROBAK2.DAT');
     Reset(fF);
     Read(fF,R);
     SetColor(25);
     Line(10,20,540,20);
     Line(10,60,540,60);
     Line(10,100,540,100);
     Line(10,140,540,140);
     Line(10,180,540,180);
     Line(10,220,540,220);
     Line(10,260,540,260);
     Line(10,300,540,300);
     Line(10,340,540,340);
     Line(10,380,540,380);
     Line(20,10,20,390);
     Line(60,10,60,390);
     Line(100,10,100,390);
     Line(140,10,140,390);
     Line(180,10,180,390);
     Line(220,10,220,390);
     Line(260,10,260,390);
     Line(300,10,300,390);
     Line(340,10,340,390);
     Line(380,10,380,390);
     Line(420,10,420,390);
     Line(460,10,460,390);
     Line(500,10,500,390);
     Ramka(1,1,550,399);
     Ramka(550,1,639,399);
     SetColor(25);
     InstalFont('LITT',5);
     SetColor(25);
     OutTextXY(575,20,'MENU');
     SetColor(26);
     OutTextXY(575,21,'MENU');
     SetColor(28);
     OutTextXY(575,22,'MENU');
     OutTextXY(565,40,'PUNKTY');
     SetColor(25);
     OutTextXY(565,80,'REKORD');
     SetColor(28);
     OutTextXY(565,100,NumStr(R));
     SetColor(25);
     OutTextXY(565,120,'CZAS');
     SetColor(25);
     OutTextXY(565,160,'MOTYLE');
     OutTextXY(565,240,'PLANSZA');
     Close(fF);
End;

Var
   X, Y, Cz, P, Plansza, Mx, My, NrR, NrL : Integer;
   F : File of Integer;

Begin
Init256('');
Assign(F,'ROBAK2.INT');
Reset(F);
Panel;
Repeat
      Read(F,X);
      Read(F,Y);
      Read(F,Cz);
      Read(F,P);
      Read(F,Plansza);
      Read(F,Mx);
      Read(F,My);
      Read(F,NrR);
      Read(F,NrL);
      Motyl(Mx*40-5,My*40-5,Tak);
      Pajak(X,Y,NrR);
      Motyle(NrL);
      SetColor(28);
      OutTextXY(565,140,NumStr(Cz));
      OutTextXY(565,60,NumStr(P));
      Delay(150);
      SetColor(0);
      OutTextXY(565,140,NumStr(Cz));
      OutTextXY(565,60,NumStr(P));
      SetFillStyle(1,0);
      Bar(X-15,Y-15,X+15,Y+15);
Until Eof(F);
End.