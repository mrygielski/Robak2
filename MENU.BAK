Uses Crt, Graph, Help, RobakTpu;

Var
   Xxx, Yyy, X2 : Integer; {ZMIENNE DO PORUSZANIA}
   Znak, Znak2 : Char; {ZMIENNE DO KLAWISZY}
   T : Integer; {ZMIENNA DO TLA}
   Xx, Yy, Cz, P, R, Plansza, Mx, My, NrR, NrL : Integer; {ZMIENNE DO DEMA}
   F, Ff : File of Integer; {ZMIENNE DO PLIKOW}
   Wx1, Wx2 : Integer; {ZMIENNE DO PAJAKA I MROWKI}
   X, Y : Integer; {ZMIENNE DO PORUSZANIA}
   Nr : Integer; {LOSOWANIE PRZEDMIOTOW}
   TN : Boolean; {ZMIENNA DO WLACZANIA I WYLACZANIA PRZEDMIOTOW}
   Kod : String; {ZMIENNA POTRZEBNA DO UAKTYWNIANIA KODOW W GRZE}

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

Procedure Menu;
begin
Ramka(1,1,639,399);InstalFont('TSCR',21);CenterTekstX(200-155,31,'II');CenterTekstX(201-155,30,'II');
CenterTekstX(202-155,29,'II');CenterTekstX(203-155,28,'II');CenterTekstX(204-155,27,'II');
CenterTekstX(205-155,26,'II');CenterTekstX(206-155,25,'II');CenterTekstX(207-155,24,'II');
CenterTekstX(208-155,23,'II');CenterTekstX(209-155,22,'II');CenterTekstX(210-155,21,'II');
CenterTekstX(211-155,20,'II');CenterTekstX(212-155,19,'II');CenterTekstX(213-155,18,'II');
InstalFont('TSCR',8);CenterTekstX(200-150,31,'ROBAK');CenterTekstX(201-150,30,'ROBAK');
CenterTekstX(202-150,29,'ROBAK');CenterTekstX(203-150,28,'ROBAK');CenterTekstX(204-150,27,'ROBAK');
CenterTekstX(205-150,26,'ROBAK');CenterTekstX(206-150,25,'ROBAK');CenterTekstX(207-150,24,'ROBAK');
CenterTekstX(208-150,23,'ROBAK');CenterTekstX(209-150,22,'ROBAK');CenterTekstX(210-150,21,'ROBAK');
CenterTekstX(211-150,20,'ROBAK');CenterTekstX(212-150,19,'ROBAK');CenterTekstX(213-150,18,'ROBAK');
InstalFont('LCOM',5);CenterTekstX(130+10,30,'START');CenterTekstX(131+10,29,'START');
CenterTekstX(132+10,28,'START');CenterTekstX(133+10,27,'START');CenterTekstX(134+10,26,'START');
CenterTekstX(135+10,25,'START');CenterTekstX(136+10,24,'START');CenterTekstX(130+60,30,'DEMO');
CenterTekstX(131+60,29,'DEMO');CenterTekstX(132+60,28,'DEMO');CenterTekstX(133+60,27,'DEMO');
CenterTekstX(134+60,26,'DEMO');CenterTekstX(135+60,25,'DEMO');CenterTekstX(136+60,24,'DEMO');
CenterTekstX(130+110,30,'INFO');CenterTekstX(131+110,29,'INFO');CenterTekstX(132+110,28,'INFO');
CenterTekstX(133+110,27,'INFO');CenterTekstX(134+110,26,'INFO');CenterTekstX(135+110,25,'INFO');
CenterTekstX(136+110,24,'INFO');CenterTekstX(130+160,30,'WYJSCIE');CenterTekstX(131+160,29,'WYJSCIE');
CenterTekstX(132+160,28,'WYJSCIE');CenterTekstX(133+160,27,'WYJSCIE');
CenterTekstX(134+160,26,'WYJSCIE');CenterTekstX(135+160,25,'WYJSCIE');CenterTekstX(136+160,24,'WYJSCIE');
InstalFont('LITT',6);CenterTekstX(360,30,'ROBAK II by MID');CenterTekstX(361,29,'ROBAK II by MID');
CenterTekstX(362,28,'ROBAK II by MID');CenterTekstX(363,27,'ROBAK II by MID');
CenterTekstX(364,26,'ROBAK II by MID');
CenterTekstX(365,25,'ROBAK II by MID');
end;

Procedure Ramka0(X, Y, Dl, Sz : Integer);
Begin
     SetColor(0);
     Rectangle(X,Y,Dl,Sz);
     Rectangle(X+1,Y+1,Dl-1,Sz-1);
     Rectangle(X+2,Y+2,Dl-2,Sz-2);
     Rectangle(X+3,Y+3,Dl-3,Sz-3);
     Rectangle(X+4,Y+4,Dl-4,Sz-4);
     Rectangle(X+5,Y+5,Dl-5,Sz-5);
     Rectangle(X+6,Y+6,Dl-6,Sz-6);
     Rectangle(X+7,Y+7,Dl-7,Sz-7);
     Rectangle(X+8,Y+8,Dl-8,Sz-8);
     Rectangle(X+9,Y+9,Dl-9,Sz-9);
End;

Procedure K(X, Y, Wl : Integer);
Begin
     Circle(X,Y,Wl);
     Circle(X,Y,Wl+1);
     Circle(X,Y,Wl+2);
     Circle(X-1,Y,Wl);
     Circle(X-1,Y,Wl+1);
     Circle(X-1,Y,Wl+2);
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
     Znak2:=ESC;
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

Procedure Panel2;
Begin
     Assign(F,'ROBAK2.DAT');
     Reset(F);
     Read(F,R);
     SetFillStyle(1,115);
     Bar(1,1,550,399);
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

Procedure Koniec2;
Begin
     Truskawki(NrL);
     Mrowka(X+7,Y,NrR);
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
     Znak2:=ESC;
End;

Procedure FinishLevel2;
Begin
     Truskawki(NrL);
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
     SetColor(115);
     InstalFont('TRIP',4);
     OutTextXY(190,180,'PRZESZLES');
     OutTextXY(190,181,'PRZESZLES');
     OutTextXY(190,182,'PRZESZLES');
     OutTextXY(190,183,'PRZESZLES');
     OutTextXY(190,184,'PRZESZLES');
     OutTextXY(190,185,'PRZESZLES');
End;

Begin
Init256('');
Menu2;
Yyy:=130;
Xxx:=250;
Repeat
      Ramka(Xxx-110,Yyy-7,Xxx+245,Yyy+51);
      Znak:=ReadKey;
      Ramka0(Xxx-110,Yyy-7,Xxx+245,Yyy+51);
      If Znak=Gora then Yyy:=Yyy-50;
      If Znak=Dol then Yyy:=Yyy+50;
      If Yyy=80 then Yyy:=Yyy+50;
      If Yyy=330 then Yyy:=Yyy-50;
      If (Yyy=130) and (Znak=ENTER) then
      Begin
           ClearDevice;
           SetColor(15);
           Line(120,200,110,170);
           Line(120,200,130,170);
           Line(120,200,90,180);
           Line(90,180,88,170);
           Line(120,200,90+60,180);
           Line(90+60,180,92+60,170);
           Line(120,200+10,90,180+10);
           Line(90,180+10,88,170+10);
           Line(120,200+10,90+60,180+10);
           Line(90+60,180+10,92+60,170+10);
           Line(120,200+20,90,180+20);
           Line(90,180+20,88,170+20);
           Line(120,200+20,90+60,180+20);
           Line(90+60,180+20,92+60,170+20);
           For Wx1:=16 to 28 do
           Begin
                SetColor(Wx1);
                K(120,200,Wx1*3-60);
           End;
           SetColor(0);
           PutPixel(112,185,0);
           Circle(112,185,1);
           Circle(112,185,2);
           PutPixel(126,185,0);
           Circle(126,185,1);
           Circle(126,185,2);
           SetColor(15);
           Line(520,200+30,490,200+20);
           Line(520,200+30,490+60,200+20);
           Line(520,180+30,490,180+20);
           Line(520,180+30,490+60,180+20);
           Line(520,160+30,490,160+20);
           Line(520,160+30,490+60,160+20);
           Line(515,150,515,135);
           Line(515+9,150,515+9,135);
           For Wx2:=16 to 28 do
           Begin
                SetColor(Wx2);
                K(520,200+30,Wx2*2-40);
           End;
           For Wx2:=16 to 28 do
           Begin
                SetColor(Wx2);
                K(520,165+30,Wx2*2-40);
           End;
           For Wx2:=16 to 28 do
           Begin
                SetColor(Wx2);
                K(520,130+30,Wx2*2-40);
           End;
           SetColor(0);
           PutPixel(515,155,0);
           Circle(515,155,1);
           Circle(515,155,2);
           PutPixel(515+9,155,0);
           Circle(515+9,155,1);
           Circle(515+9,155,2);
           X2:=40;
           Repeat
                 Ramka(X2,90,X2+150,300);
                 Znak2:=ReadKey;
                 Ramka0(X2,90,X2+150,300);
                 If Znak2=Prawo then X2:=X2+400;
                 If Znak2=Lewo then X2:=X2-400;
                 If X2=-360 then X2:=X2+400;
                 If X2=840 then X2:=X2-400;
                 If (X2=40) and (Znak2=ENTER) then
                 Begin
ClearDevice;
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
           Cz:=0;
           Znak:=ESC;
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
End;                 End;
                 If (X2=440) and (Znak2=ENTER) then
                 Begin
SetTextJustify(LeftText,RightText);
Panel2;
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
Truskawka(Mx*40-5,My*40-5,TN);
Repeat
      Cz:=Cz-1;
      Mrowka(X+7,Y,NrR);
      SetColor(28);
      InstalFont('LITT',5);
      OutTextXY(565,140,NumStr(Cz));
      OutTextXY(565,60,NumStr(P));
      Truskawki(NrL);
      Delay(30);
      SetColor(0);
      InstalFont('LITT',5);
      OutTextXY(565,140,NumStr(Cz));
      OutTextXY(565,60,NumStr(P));
      SetFillStyle(1,115);
      Bar(X-15,Y-15,X+15,Y+15);
      If Cz=0 then
      Begin
           Cz:=0;
           Znak:=ESC;
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
           Truskawka(Mx*40-5,My*40-5,TN);
           P:=P+100;
      End;
      If NrL=8 then Begin TN:=Nie; End;
      If (NrL=9) and (Plansza=1) then
      Begin
           SetColor(25);
           OutTextXY(565,140,NumStr(Cz));
           OutTextXY(565,60,NumStr(P));
           SetFillStyle(1,115);
           Bar(X-15,Y-15,X+15,Y+15);
           FinishLevel2;
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
           Truskawka(Mx*40-5,My*40-5,TN);
      End;
      If (NrL=9) and (Plansza=2) then
      Begin
           SetColor(25);
           OutTextXY(565,140,NumStr(Cz));
           OutTextXY(565,60,NumStr(P));
           SetFillStyle(1,115);
           Bar(X-15,Y-15,X+15,Y+15);
           FinishLevel2;
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
           Truskawka(Mx*40-5,My*40-5,TN);
      End;
      If (NrL=9) and (Plansza=3) then
      Begin
           SetColor(25);
           OutTextXY(565,140,NumStr(Cz));
           OutTextXY(565,60,NumStr(P));
           SetFillStyle(1,115);
           Bar(X-15,Y-15,X+15,Y+15);
           FinishLevel2;
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
           Truskawka(Mx*40-5,My*40-5,TN);
      End;
      If (NrL=9) and (Plansza=4) then
      Begin
           SetColor(25);
           OutTextXY(565,140,NumStr(Cz));
           OutTextXY(565,60,NumStr(P));
           SetFillStyle(1,115);
           Bar(X-15,Y-15,X+15,Y+15);
           FinishLevel2;
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
           Truskawka(Mx*40-5,My*40-5,TN);
      End;
      If (NrL=9) and (Plansza=5) then
      Begin
           SetColor(25);
           OutTextXY(565,140,NumStr(Cz));
           OutTextXY(565,60,NumStr(P));
           SetFillStyle(1,115);
           Bar(X-15,Y-15,X+15,Y+15);
           FinishLevel2;
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
           Truskawka(Mx*40-5,My*40-5,TN);
      End;
      If (NrL=9) and (Plansza=6) then
      Begin
           SetColor(25);
           OutTextXY(565,140,NumStr(Cz));
           OutTextXY(565,60,NumStr(P));
           SetFillStyle(1,115);
           Bar(X-15,Y-15,X+15,Y+15);
           FinishLevel2;
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
           Truskawka(Mx*40-5,My*40-5,TN);
      End;
      If (NrL=9) and (Plansza=7) then
      Begin
           SetColor(25);
           OutTextXY(565,140,NumStr(Cz));
           OutTextXY(565,60,NumStr(P));
           SetFillStyle(1,115);
           Bar(X-15,Y-15,X+15,Y+15);
           If P>R then
           Begin
                Rewrite(F);
                Write(F,P);
                Close(F);
           End;
           FinishLevel2;
           Znak2:=ESC;
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
                      Mrowka(X+7,Y,NrR);
                      Truskawka(Mx*40-5,My*40-5,TN);
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
                Mrowka(X+7,Y,NrR);
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
Koniec2;
If P>R then
Begin
     Rewrite(F);
     Write(F,P);
     Close(F);
End;
End;
           Until Znak2=ESC;
           Menu2;
           Y:=130;
           X:=250;
      End;
      If (Yyy=180) and (Znak=ENTER) then
      Begin
           SetTextJustify(LeftText,RightText);
           ClearDevice;
           Assign(F,'ROBAK2.INT');
           Reset(F);
           Panel;
           Repeat
                 Read(F,Xx);
                 Read(F,Yy);
                 Read(F,Cz);
                 Read(F,P);
                 Read(F,Plansza);
                 Read(F,Mx);
                 Read(F,My);
                 Read(F,NrR);
                 Read(F,NrL);
                 Motyl(Mx*40-5,My*40-5,Tak);
                 Pajak(Xx,Yy,NrR);
                 Motyle(NrL);
                 SetColor(28);
                 OutTextXY(565,140,NumStr(Cz));
                 OutTextXY(565,60,NumStr(P));
                 Plansze(Plansza);
                 Delay(150);
                 SetColor(0);
                 OutTextXY(565,140,NumStr(Cz));
                 OutTextXY(565,60,NumStr(P));
                 SetFillStyle(1,0);
                 Bar(Xx-15,Yy-15,Xx+15,Yy+15);
           Until Eof(F);
           Menu2;
      End;
      If (Yyy=230) and (Znak=ENTER) then
      Begin
           ClearDevice;
           Ramka(0,0,639,399);
           InstalFont('LITT',7);
           SetColor(25);
           OutTextXY(120,50,'TWORCY PROGRAMU:');
           InstalFont('LITT',8);
           SetColor(25);
           OutTextXY(140,100,'MICHAL RYGIELSKI');
           InstalFont('LITT',7);
           SetColor(25);
           OutTextXY(220,120,'(POMYSL, PROGRAMOWANIE I GRAFIKA)');
           InstalFont('LITT',8);
           SetColor(25);
           OutTextXY(135,160,'DAWID RYGIELSKI');
           InstalFont('LITT',7);
           SetColor(25);
           OutTextXY(130,180,'(GRAFIKA I DZWIEKI)');
           InstalFont('LITT',9);
           SetColor(25);
           OutTextXY(250,250,'WIECEJ W PLIKU README.EXE ');
           Pajak(250,330,3);
           Mrowka(380,330,3);
           Key(ESC);
           Menu2;
      End;
      If (Yyy=280) and (Znak=ENTER) then
      Begin
           For T:=16 to 31 do
           Begin
                SetFillStyle(1,T);
                Bar(10,10,640,400);
                Delay(2);
           End;
           Menu;
           Czysc6(256);
           CloseGraph;
           Halt;
      End;
Until Znak='s dsk erkl  ed sdl jksdmv df "{}{P"L:KKHJKeeriit iwe iwtu wi   kj ROBAK II by MID Corp. ^ % D SF  WM1MM±±›c';
CloseGraph;
End.