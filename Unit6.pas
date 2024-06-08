unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Buttons;

type
  TFormTrigonometri = class(TForm)
    EditInputTR: TEdit;
    RadioButtonSin: TRadioButton;
    RadioButtonCos: TRadioButton;
    RadioButtonTan: TRadioButton;
    RadioButtonCsc: TRadioButton;
    RadioButtonSec: TRadioButton;
    RadioButtonCot: TRadioButton;
    EditHasilTR: TEdit;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    ButtonHitung: TButton;
    BitBtnBackTampilanUtama: TBitBtn;
    procedure Button1Click(Sender: TObject);
    procedure ButtonHitungClick(Sender: TObject);
    procedure BitBtnBackTampilanUtamaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTrigonometri: TFormTrigonometri;

implementation

uses Unit3;

{$R *.dfm}

procedure TFormTrigonometri.Button1Click(Sender: TObject);
begin
  FormTrigonometri.Hide;
  FormMenuUtama.Show;
end;

procedure TFormTrigonometri.ButtonHitungClick(Sender: TObject);
var
	x:real;
	pilihan:double;

function SinusX:double;
	begin
		SinusX:=round(sin(x*pi/180)*100)/100;
	end;
function CosinusX:double;
	begin
		CosinusX:=round(cos(x*pi/180)*100)/100;
	end;
function TangentX:double;
	begin
		TangentX:=round((SinusX)/(CosinusX));
	end;
function CosecantX:double;
	begin
		CosecantX:=round(1/(SinusX));
	end;
function SecantX:double;
	begin
		SecantX:=round(1/(CosinusX));
	end;
function CotangentX:double;
	begin
		CotangentX:=round(1/(TangentX));
	end;

procedure Pilih;
	begin
		if radiobuttonSin.Checked then
			pilihan:=SinusX
    else if radiobuttonCos.Checked then
      pilihan:=CosinusX
		else if radiobuttonTan.Checked then
			pilihan:=TangentX
		else if radiobuttonCsc.Checked then
			pilihan:=CosecantX
		else if radiobuttonSec.Checked then
			pilihan:=SecantX
		else
			pilihan:=CotangentX;
	end;

begin
	x:=StrToFloat(EditInputTR.Text);
	Pilih;
	EditHasilTR.Text:=FloatToStr(pilihan);
end;
procedure TFormTrigonometri.BitBtnBackTampilanUtamaClick(Sender: TObject);
begin
  FormMenuUtama.Show;
  FormTrigonometri.Hide;
end;

end.
