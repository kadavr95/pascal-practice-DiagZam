unit DiagZam;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls;

type
  TForm2 = class(TForm)
    edta: TEdit;
    edtb: TEdit;
    btn: TButton;
    sgd1: TStringGrid;
    sgd2: TStringGrid;
    procedure btnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation
 const
 n=5;
 type
 mas=array[1..n,1..n] of real;
{$R *.dfm}
  function fmin(ma:mas; s:integer):integer;
var
x,i:integer;
begin
 x:=s;
  for i:=1 to n do

   if ma[s,x]<ma[s,i] then
    x:=i;
    fmin:=x;
end;
procedure change(var x,y:real);
var
c:real;
begin
  c:=x;
  x:=y;
  y:=c;
end;
  procedure zap(var ma:mas);
var
  I,j,a,b: Integer;
  begin
  randomize;
  a:=strtoint(form2.edta.text);
  b:=strtoint(form2.edtb.Text);
    for I := 1 to n do
     for j := 1 to n do
      ma[i,j]:=a+random()*(b-a);
  end;
  procedure viv(ma:mas);
var
  I: Integer;
  j: Integer;
  begin
    for I := 1 to n do
     for j := 1 to n do
      form2.sgd1.cells[j-1,i-1]:=floattostr(ma[i,j]);
  end;
procedure sort(var ma:mas);
 var
i:integer;
begin
for i := 1 to n do

begin
change(ma[i,i],ma[i,fmin(ma,i)]);

end;
end;
 procedure viv2(ma:mas);
var
  I: integer;
  j: Integer;
  begin
   for I := 1 to n do
     for j := 1 to n do
      form2.sgd2.cells[j-1,i-1]:=floattostr(ma[i,j]);
  end;
procedure TForm2.btnClick(Sender: TObject);
var
ma:mas;
begin
sgd1.colcount:=n;
sgd1.rowcount:=n;
sgd2.colcount:=n;
sgd2.rowcount:=n;
zap(ma);
viv(ma);
sort(ma);
viv2(ma);
end;



end.
