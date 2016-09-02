//This code is a refactoring of goo.gl/Bj87B6
//THANXS TO stackoverflow, forum.lazarus & wiki.lazarus.freepascal
//Agradecimiento especial a Pedro Galindo por el respaldo teórico


{Copyright (C) <2016>  <Wilson Bravo>

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>}

unit neo;

{$mode objfpc}{$H+}

interface

uses
  Classes, Math, SysUtils, FileUtil, TAGraph, TASeries, Forms, Controls,
  Graphics, Dialogs, Menus, StdCtrls, ExtCtrls, Buttons, Types, TACustomSeries,
  TAFuncSeries;

type

{ TForm1 }

  TForm1 = class(TForm)
    Button10: TButton;
    Button11: TButton;
    Chart1: TChart;
    FCosSeries: TFuncSeries;
    FSinSeries: TFuncSeries;
    CosSeries: TLineSeries;
    FTanSeries: TFuncSeries;
    TanSeries: TLineSeries;
    SinSeries: TLineSeries;
    MainMenu1: TMainMenu;
    MainMenu2: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    Modo: TMenuItem;
    normal1: TMenuItem;
    Edit2: TEdit;
    scientifique1: TMenuItem;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button12: TButton;
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure FCosSeriesCalculate(const AX: Double; out AY: Double);
    procedure FormCreate(Sender: TObject);
    procedure FSinSeriesCalculate(const AX: Double; out AY: Double);
    procedure FTanSeriesCalculate(const AX: Double; out AY: Double);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure ModoClick(Sender: TObject);
    procedure scientifique1Click(Sender: TObject);
    procedure normal1Click(Sender: TObject);

  private
    { private declarations }
  public
    { public declarations }
    val1:real;
    val2:real;
    total:real;
    operateur:integer;
    touch:string;
  end;
var
  Form1: TForm1;
implementation

{$R *.lfm}
{ TForm1 }


//botón + 
procedure TForm1.BitBtn7Click(Sender: TObject);
begin
val1:=strtofloat(edit2.Text); //Conversión a float del contenido del edit en val1
operateur:=1; //parámetro de operación
edit2.Text:='' //vacía el campo edit2
end;

//botón -
procedure TForm1.BitBtn8Click(Sender: TObject);
begin
val1:=strtofloat(edit2.Text);
operateur:=2;
edit2.Text:='';
end;

//botón *
procedure TForm1.BitBtn9Click(Sender: TObject);
begin
val1:=strtofloat(edit2.Text);
operateur:=3;
edit2.Text:='';
end;

//botón /
procedure TForm1.BitBtn10Click(Sender: TObject);
begin
val1:=strtofloat(edit2.Text);
operateur:=4;
edit2.Text:='';
end;

//equal
procedure TForm1.Button12Click(Sender: TObject);
begin
val2:=strtofloat(edit2.Text); 
case operateur of 
1: total:=val1+val2;
2: total:=val1-val2;
3: total:=val1*val2;
4: total:=val1/val2;
end;
edit2.Text:=floattostr(total);
end;

//valor -1
procedure TForm1.BitBtn1Click(Sender: TObject);
var 
long:integer;
begin
long:=length(edit2.Text);
long:=long-1;
edit2.Text:=Leftstr(edit2.Text,long)
end;

//teclado numérico
procedure TForm1.Button1Click(Sender: TObject);
begin
touch:=(sender as TButton).caption;
edit2.Text:=edit2.Text+(sender as TButton).caption;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
touch:=(sender as TButton).caption;
edit2.Text:=edit2.Text+(sender as TButton).caption;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
touch:=(sender as TButton).caption;
edit2.Text:=edit2.Text+(sender as TButton).caption;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
touch:=(sender as TButton).caption;
edit2.Text:=edit2.Text+(sender as TButton).caption;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
touch:=(sender as TButton).caption;
edit2.Text:=edit2.Text+(sender as TButton).caption;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
touch:=(sender as TButton).caption;
edit2.Text:=edit2.Text+(sender as TButton).caption;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
touch:=(sender as TButton).caption;
edit2.Text:=edit2.Text+(sender as TButton).caption;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
touch:=(sender as TButton).caption;
edit2.Text:=edit2.Text+(sender as TButton).caption;
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
touch:=(sender as TButton).caption;
edit2.Text:=edit2.Text+(sender as TButton).caption;
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
touch:=(sender as TButton).caption;
edit2.Text:=edit2.Text+(sender as TButton).caption;
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
  touch:=(sender as TButton).caption;
edit2.Text:=edit2.Text+(sender as TButton).caption;

end;

//inicia el form
procedure TForm1.FormCreate(Sender: TObject);
begin
bitbtn2.Enabled:=false;
bitbtn3.Enabled:=false;
bitbtn4.Enabled:=false;
Chart1.Visible:=false;
end;

//Series a ser graficadas en el chart
procedure TForm1.FSinSeriesCalculate(const AX: Double; out AY: Double);
begin
  AY:=(sin(val1));
end;

procedure TForm1.FCosSeriesCalculate(const AX: Double; out AY: Double);
begin

    AY:=(cos(val1));
end;

procedure TForm1.FTanSeriesCalculate(const AX: Double; out AY: Double);
begin

  AY:=(tan(val1));

end;

//menú
procedure TForm1.MenuItem1Click(Sender: TObject);
begin

end;

procedure TForm1.MenuItem2Click(Sender: TObject);
begin
          application.Terminate;
end;

procedure TForm1.MenuItem3Click(Sender: TObject);
begin
showmessage('Instituto Tecnológico Superior "Aloasí", actual ITSTP ' + Chr(13) + Chr(13) + 'Creación de una Calculadora' + Chr(13) + Chr(13)+'Proyecto de Fin de Semestre'+ Chr(13)+ Chr(13)+'Wilson Bravo'+ Chr(13)+ Chr(13)+'Tutor: Roberto Camana');
end;

procedure TForm1.ModoClick(Sender: TObject);
begin

end;


//modo normal 
procedure TForm1.normal1Click(Sender: TObject);
begin
normal1.Checked:=true;
scientifique1.Checked:=false;
if normal1.Checked=true then

begin 
bitbtn2.Enabled:=false;
bitbtn3.Enabled:=false;
bitbtn4.Enabled:=false;
Chart1.Visible:=false;
end;
end;

//modo científico
procedure TForm1.scientifique1Click(Sender: TObject);
begin
normal1.Checked:=false;
scientifique1.Checked:=true;
if scientifique1.Checked=true then 
begin
bitbtn2.Enabled:=true;
bitbtn3.Enabled:=true;
bitbtn4.Enabled:=true;
Chart1.Visible:=true;
Chart1.BackColor:=$00A0E08D;
 Chart1.Color:=$0084F8FB; Chart1.BackColor:=$00A0E08D;
  Chart1.Color:=$0084F8FB;
end;
end;

//cálculo del seno, la función seno trabaja en radianes
procedure TForm1.BitBtn2Click(Sender: TObject);
const
  N = 200;
var
  i: Integer;
  x: Double;
  min:double;
  max:double;
  fs: TFuncSeries;
  begin
val1:= degtorad(strtofloat(edit2.Text));
total:= sin(val1);
edit2.Text:=floattostr(total);
min:=-val1;
max:=val1;
fs:=TFuncSeries.Create(Chart1);
fs.OnCalculate:=@FSinSeriesCalculate;
Chart1.AddSeries(fs);
for i:=0 to N - 1 do begin
x := min + (max - min) * i / (N - 1);
SinSeries.AddXY(x,sin(x));
end;
end;

//cálculo del coseno
procedure TForm1.BitBtn3Click(Sender: TObject);
const
  M = 200;
var
  j: Integer;
  y: Double;
  min1:Double;
  max1:Double;
  fs1:TFuncSeries;
begin
val1:= degtorad(strtofloat(edit2.Text));
total:= cos(val1);
edit2.Text:=floattostr(total);
min1:=-val1;
max1:=val1;
fs1:=TFuncSeries.Create(Chart1);
fs1.OnCalculate:=@FCosSeriesCalculate;
Chart1.AddSeries(fs1);
for j:=0 to M - 1 do begin
y := min1 + (max1-min1) * j / (M - 1);
CosSeries.AddXY(y,cos(y));
end;
end;

//cálculo de la tangente
procedure TForm1.BitBtn4Click(Sender: TObject);
const
  O = 200;
var
  k: Integer;
  z: Double;
  min2:Double;
  max2:Double;
 fs2:TFuncSeries;
begin
val1:= degtorad(strtofloat(edit2.Text));
total:= tan(val1);
edit2.Text:=floattostr(total);
min2:=-val1;
max2:=val1;
fs2:=TFuncSeries.Create(Chart1);
fs2.OnCalculate:=@FTanSeriesCalculate;
Chart1.AddSeries(fs2);
for k:=0 to O - 1 do begin
z := min2 + (max2-min2) * k / (O - 1);
TanSeries.AddXY(z,z*tan(z));
end;
end;

//proceso que reinicializa las distintas variables y gráficas
procedure TForm1.BitBtn6Click(Sender: TObject);
begin
val1:=0;
val2:=0;
total:=0;
edit2.Text:='';
{Chart1.ClearSeries;}
SinSeries.Clear;
CosSeries.Clear;
TanSeries.Clear;
end;

end.
