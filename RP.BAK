Uses Crt, Graph, Help, RobakTpu;

Var
   X, Y : Integer; {ZMIENNE DO PORUSZANIA}
   Nr, NrR, NrL, Mx, My : Integer; {LOSOWANIE PRZEDMIOTOW}
   Znak : Char; {ZMIENNA DO KLAWISZY}
   P, R, Cz, Plansza : Integer; {ZMIENNE DO PUNKTOW, REKORDU, CZASU I PLANSZ}
   F : File of Integer; {ZMIENNA DO ODCZYTYWANIA I ZAPISYWANIA PLIKU}
   TN : Boolean; {ZMIENNA DO WLACZANIA I WYLACZANIA PRZEDMIOTOW}
   Kod : String; {ZMIENNA POTRZEBNA DO UAKTYWNIANIA KODOW W GRZE}

Procedure Panel;
Begin
     Assign(F,'ROBAK2.DAT');
     Reset(F);
     Read(F,R);
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
     Close(F);
End;

Procedure Koniec;
Begin
     Motyle(NrL);
     Pajak(X,Y,NrR);
     InstalFont('LITT',5);
     SetColor(28);
     OutTextXY(565,140,NumStr(Cz));
     OutTextXY(565,60,NumStr(P));
     InstalFont('TRIP',4);
     SetColor(26);
     OutTextXY(150,180,'GRA PRZERWANA');
     SetColor(25);
     OutTextXY(150,181,'GRA PRZERWANA');
     SetColor(24);
     OutTextXY(150,182,'GRA PRZERWANA');
     SetColor(23);
     OutTextXY(150,183,'GRA PRZERWANA');
     SetColor(22);
     OutTextXY(150,184,'GRA PRZERWANA');
     SetColor(21);
     OutTextXY(150,185,'GRA PRZERWANA');
     EnterKey;
End;

Procedure FinishLevel;
Begin
     Motyle(NrL);
     InstalFont('LITT',5);
     SetColor(28);
     OutTextXY(565,140,NumStr(Cz));
     OutTextXY(565,60,NumStr(P));
     InstalFont('TRIP',4);
     SetColor(26);
     OutTextXY(190,180,'PRZESZLES');
     SetColor(25);
     OutTextXY(190,181,'PRZESZLES');
     SetColor(24);
     OutTextXY(190,182,'PRZESZLES');
     SetColor(23);
     OutTextXY(190,183,'PRZESZLES');
     SetColor(22);
     OutTextXY(190,184,'PRZESZLES');
     SetColor(21);
     OutTextXY(190,185,'PRZESZLES');
     InstalFont('LITT',5);
     SetUserCharSize(2, 1, 25, 2);
     SetColor(30);
     OutTextXY(565,270,'ENTER');
     SetColor(29);
     OutTextXY(565,269,'ENTER');
     SetColor(28);
     OutTextXY(565,268,'ENTER');
     SetColor(27);
     OutTextXY(565,267,'ENTER');
     SetColor(26);
     OutTextXY(565,266,'ENTER');
     SetColor(25);
     OutTextXY(565,265,'ENTER');
     SetColor(24);
     OutTextXY(565,264,'ENTER');
     SetColor(23);
     OutTextXY(565,263,'ENTER');
     EnterKey;
     SetColor(0);
     OutTextXY(565,270,'ENTER');
     OutTextXY(565,269,'ENTER');
     OutTextXY(565,268,'ENTER');
     OutTextXY(565,267,'ENTER');
     OutTextXY(565,266,'ENTER');
     OutTextXY(565,265,'ENTER');
     OutTextXY(565,264,'ENTER');
     OutTextXY(565,263,'ENTER');
     SetColor(0);
     InstalFont('TRIP',4);
     OutTextXY(190,180,'PRZESZLES');
     OutTextXY(190,181,'PRZESZLES');
     OutTextXY(190,182,'PRZESZLES');
     OutTextXY(190,183,'PRZESZLES');
     OutTextXY(190,184,'PRZESZLES');
     OutTextXY(190,185,'PRZESZLES');
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
End;

Begin
Init256('');
SetTextJustify(LeftText,RightText);
Panel;
X:=40;
Y:=40;
NrR:=2;
Cz:=2000;
TN:=Tak;
Plansza:=1;
Plansze(Plansza);
Randomize;
Mx:=Random(13)+1;
My:=Random(9)+1;
Motyl(Mx*40-5,My*40-5,TN);
Repeat
      Cz:=Cz-1;
      Pajak(X,Y,NrR);
      SetColor(28);
      InstalFont('LITT',5);
      OutTextXY(565,140,NumStr(Cz));
      OutTextXY(565,60,NumStr(P));
      Motyle(NrL);
      Delay(30);
      SetColor(0);
      InstalFont('LITT',5);
      OutTextXY(565,140,NumStr(Cz));
      OutTextXY(565,60,NumStr(P));
      SetFillStyle(1,0);
      Bar(X-15,Y-15,X+15,Y+15);
      If Cz=0 then
      Begin
           Koniec;
           If P>R then
           Begin
                Rewrite(F);
                Write(F,P);
                Close(F);
           End;
      End;
      If (X=Mx*40) and (Y=My*40) then
      Begin
           NrL:=NrL+1;
           Randomize;
           Mx:=Random(13)+1;
           My:=Random(9)+1;
           Motyl(Mx*40-5,My*40-5,TN);
           P:=P+100;
      End;
      If NrL=8 then Begin TN:=Nie; End;
      If (NrL=9) and (Plansza=1) then
      Begin
           SetColor(25);
           OutTextXY(565,140,NumStr(Cz));
           OutTextXY(565,60,NumStr(P));
           SetFillStyle(1,0);
           Bar(X-15,Y-15,X+15,Y+15);
           FinishLevel;
           InstalFont('LITT',5);
           SetColor(0);
           OutTextXY(565,140,NumStr(Cz));
           OutTextXY(565,60,NumStr(P));
           SetFillStyle(1,0);
           Bar(570,175,625,230);
           Plansza:=Plansza+1;
           X:=40;
           Y:=40;
           NrR:=2;
           NrL:=0;
           Cz:=1800;
           TN:=Tak;
           Plansze(Plansza);
           Randomize;
           Mx:=Random(13)+1;
           My:=Random(9)+1;
           Motyl(Mx*40-5,My*40-5,TN);
      End;
      If (NrL=9) and (Plansza=2) then
      Begin
           SetColor(25);
           OutTextXY(565,140,NumStr(Cz));
           OutTextXY(565,60,NumStr(P));
           SetFillStyle(1,0);
           Bar(X-15,Y-15,X+15,Y+15);
           FinishLevel;
           InstalFont('LITT',5);
           SetColor(0);
           OutTextXY(565,140,NumStr(Cz));
           OutTextXY(565,60,NumStr(P));
           SetFillStyle(1,0);
           Bar(570,175,625,230);
           Plansza:=Plansza+1;
           X:=40;
           Y:=40;
           NrR:=2;
           NrL:=0;
           Cz:=1600;
           TN:=Tak;
           Plansze(Plansza);
           Randomize;
           Mx:=Random(13)+1;
           My:=Random(9)+1;
           Motyl(Mx*40-5,My*40-5,TN);
      End;
      If (NrL=9) and (Plansza=3) then
      Begin
           SetColor(25);
           OutTextXY(565,140,NumStr(Cz));
           OutTextXY(565,60,NumStr(P));
           SetFillStyle(1,0);
           Bar(X-15,Y-15,X+15,Y+15);
           FinishLevel;
           InstalFont('LITT',5);
           SetColor(0);
           OutTextXY(565,140,NumStr(Cz));
           OutTextXY(565,60,NumStr(P));
           SetFillStyle(1,0);
           Bar(570,175,625,230);
           Plansza:=Plansza+1;
           X:=40;
           Y:=40;
           NrR:=2;
           NrL:=0;
           Cz:=1400;
           TN:=Tak;
           Plansze(Plansza);
           Randomize;
           Mx:=Random(13)+1;
           My:=Random(9)+1;
           Motyl(Mx*40-5,My*40-5,TN);
      End;
      If (NrL=9) and (Plansza=4) then
      Begin
           SetColor(25);
           OutTextXY(565,140,NumStr(Cz));
           OutTextXY(565,60,NumStr(P));
           SetFillStyle(1,0);
           Bar(X-15,Y-15,X+15,Y+15);
           FinishLevel;
           InstalFont('LITT',5);
           SetColor(0);
           OutTextXY(565,140,NumStr(Cz));
           OutTextXY(565,60,NumStr(P));
           SetFillStyle(1,0);
           Bar(570,175,625,230);
           Plansza:=Plansza+1;
           X:=40;
           Y:=40;
           NrR:=2;
           NrL:=0;
           Cz:=1000;
           TN:=Tak;
           Plansze(Plansza);
           Randomize;
           Mx:=Random(13)+1;
           My:=Random(9)+1;
           Motyl(Mx*40-5,My*40-5,TN);
      End;
      If (NrL=9) and (Plansza=5) then
      Begin
           SetColor(25);
           OutTextXY(565,140,NumStr(Cz));
           OutTextXY(565,60,NumStr(P));
           SetFillStyle(1,0);
           Bar(X-15,Y-15,X+15,Y+15);
           FinishLevel;
           InstalFont('LITT',5);
           SetColor(0);
           OutTextXY(565,140,NumStr(Cz));
           OutTextXY(565,60,NumStr(P));
           SetFillStyle(1,0);
           Bar(570,175,625,230);
           Plansza:=Plansza+1;
           X:=40;
           Y:=40;
           NrR:=2;
           NrL:=0;
           Cz:=600;
           TN:=Tak;
           Plansze(Plansza);
           Randomize;
           Mx:=Random(13)+1;
           My:=Random(9)+1;
           Motyl(Mx*40-5,My*40-5,TN);
      End;
      If (NrL=9) and (Plansza=6) then
      Begin
           SetColor(25);
           OutTextXY(565,140,NumStr(Cz));
           OutTextXY(565,60,NumStr(P));
           SetFillStyle(1,0);
           Bar(X-15,Y-15,X+15,Y+15);
           FinishLevel;
           InstalFont('LITT',5);
           SetColor(0);
           OutTextXY(565,140,NumStr(Cz));
           OutTextXY(565,60,NumStr(P));
           SetFillStyle(1,0);
           Bar(570,175,625,230);
           Plansza:=Plansza+1;
           X:=40;
           Y:=40;
           NrR:=2;
           NrL:=0;
           Cz:=400;
           TN:=Tak;
           Plansze(Plansza);
           Randomize;
           Mx:=Random(13)+1;
           My:=Random(9)+1;
           Motyl(Mx*40-5,My*40-5,TN);
      End;
      If (NrL=9) and (Plansza=7) then
      Begin
           SetColor(25);
           OutTextXY(565,140,NumStr(Cz));
           OutTextXY(565,60,NumStr(P));
           SetFillStyle(1,0);
           Bar(X-15,Y-15,X+15,Y+15);
           If P>R then
           Begin
                Rewrite(F);
                Write(F,P);
                Close(F);
           End;
           FinishLevel;
      End;
      If KeyPressed then
      Begin
           Znak:=ReadKey;
           If Znak=Prawo then begin X:=X+40; NrR:=2; end;
           If Znak=Lewo then begin X:=X-40; NrR:=1; end;
           If Znak=Dol then begin Y:=Y+40; NrR:=3; end;
           If Znak=Gora then begin Y:=Y-40; NrR:=4; end;
           If X=0 then X:=X+40;
           If X=560 then X:=X-40;
           If Y=0 then Y:=Y+40;
           If Y=400 then Y:=Y-40;
           If Znak=F7 then
           Begin
                SetUserCharSize(2, 1, 25, 2);
                SetColor(30);
                OutTextXY(565,270,'PAUZA');
                SetColor(29);
                OutTextXY(565,269,'PAUZA');
                SetColor(28);
                OutTextXY(565,268,'PAUZA');
                SetColor(27);
                OutTextXY(565,267,'PAUZA');
                SetColor(26);
                OutTextXY(565,266,'PAUZA');
                SetColor(25);
                OutTextXY(565,265,'PAUZA');
                SetColor(24);
                OutTextXY(565,264,'PAUZA');
                SetColor(23);
                OutTextXY(565,263,'PAUZA');
                Repeat
                      Pajak(X,Y,NrR);
                      Motyl(Mx*40-5,My*40-5,TN);
                      SetColor(28);
                      InstalFont('LITT',5);
                      OutTextXY(565,140,NumStr(Cz));
                      OutTextXY(565,60,NumStr(P));
                      Znak:=ReadKey;
                      SetFillStyle(1,0);
                      Bar(563,138,620,155);
                Until Znak=F7;
                SetUserCharSize(2, 1, 25, 2);
                SetColor(0);
                OutTextXY(565,270,'PAUZA');
                OutTextXY(565,269,'PAUZA');
                OutTextXY(565,268,'PAUZA');
                OutTextXY(565,267,'PAUZA');
                OutTextXY(565,266,'PAUZA');
                OutTextXY(565,265,'PAUZA');
                OutTextXY(565,264,'PAUZA');
                OutTextXY(565,263,'PAUZA');
                InstalFont('LITT',5);
           End;
           If Znak=F8 then
           Begin
                Pajak(X,Y,NrR);
                SetColor(28);
                OutTextXY(565,140,NumStr(Cz));
                OutTextXY(565,60,NumStr(P));
                SetColor(28);
                OutTextXY(565,290,'KOD:');
                StrGraph(595,290,7,0,28,5,4,Kod,'LITT',T1);
                If Kod='ptk' then begin P:=P+200; SetFillStyle(1,0); Bar(563,60,627,75); end;
                If Kod='czas' then begin Cz:=Cz+500; SetFillStyle(1,0); Bar(563,140,627,155); end;
                SetColor(0);
                OutTextXY(565,140,NumStr(Cz));
                OutTextXY(565,60,NumStr(P));
                SetFillStyle(1,0);
                Bar(563,290,627,310);
           End;
      End;
Until Znak=ESC;
Koniec;
If P>R then
Begin
     Rewrite(F);
     Write(F,P);
     Close(F);
End;
CloseGraph;
End.