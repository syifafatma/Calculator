unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, Buttons;

type
  TFormBangunRuang = class(TForm)
    MainMenuBangunRuang: TMainMenu;
    Kubus: TMenuItem;
    Balok: TMenuItem;
    PrismaSegitiga: TMenuItem;
    LimasSegitiga: TMenuItem;
    Tabung: TMenuItem;
    Bola: TMenuItem;
    GroupBoxKubus: TGroupBox;
    GroupBoxBalok: TGroupBox;
    GroupBoxPS: TGroupBox;
    GroupBoxLS: TGroupBox;
    GroupBoxTabung: TGroupBox;
    GroupBoxBola: TGroupBox;
    ButtonVBola: TButton;
    LabelAL: TLabel;
    EditAL: TEdit;
    LabelTL: TLabel;
    LabelTPL: TLabel;
    EditTL: TEdit;
    EditTPL: TEdit;
    EditVLS: TEdit;
    ButtonVLS: TButton;
    LabelAP: TLabel;
    LabelTP: TLabel;
    LabelTS: TLabel;
    EditAP: TEdit;
    EditTP: TEdit;
    EditTS: TEdit;
    ButtonVPS: TButton;
    EditVPS: TEdit;
    LabelR3: TLabel;
    EditR3: TEdit;
    EditT: TEdit;
    ButtonVT: TButton;
    EditVT: TEdit;
    LabelT: TLabel;
    ButtonVB: TButton;
    EditVB: TEdit;
    LabelTB: TLabel;
    LabelLB: TLabel;
    EditLB: TEdit;
    EditTB: TEdit;
    LabelPB: TLabel;
    EditPB: TEdit;
    ButtonVk: TButton;
    EditVK: TEdit;
    LabelSK: TLabel;
    EditSK: TEdit;
    LabelR2: TLabel;
    EditVBola: TEdit;
    EditR2: TEdit;
    BitBtnBackFormBangunRuang: TBitBtn;
    procedure ButtonBackFormBangunRuangClick(Sender: TObject);
    procedure BalokClick(Sender: TObject);
    procedure PrismaSegitigaClick(Sender: TObject);
    procedure LimasSegitigaClick(Sender: TObject);
    procedure TabungClick(Sender: TObject);
    procedure BolaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ButtonVkClick(Sender: TObject);
    procedure ButtonVBClick(Sender: TObject);
    procedure ButtonVBolaClick(Sender: TObject);
    procedure ButtonVTClick(Sender: TObject);
    procedure ButtonVPSClick(Sender: TObject);
    procedure ButtonVLSClick(Sender: TObject);
    procedure KubusClick(Sender: TObject);
    procedure BitBtnBackFormBangunRuangClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBangunRuang: TFormBangunRuang;

implementation

uses Unit4;

{$R *.dfm}

procedure TFormBangunRuang.ButtonBackFormBangunRuangClick(Sender: TObject);
begin
  FormGeometri.Show;
  FormBangunRuang.Hide;
end;

procedure TFormBangunRuang.BalokClick(Sender: TObject);
begin
  GroupBoxBalok.Show;
  GroupBoxBola.Hide;
  GroupBoxKubus.Hide;
  GroupBoxLS.Hide;
  GroupBoxPS.Hide;
  GroupBoxTabung.Hide;
end;

procedure TFormBangunRuang.PrismaSegitigaClick(Sender: TObject);
begin
  GroupBoxBalok.Hide;
  GroupBoxBola.Hide;
  GroupBoxKubus.Hide;
  GroupBoxLS.Hide;
  GroupBoxPS.Show;
  GroupBoxTabung.Hide;
end;

procedure TFormBangunRuang.LimasSegitigaClick(Sender: TObject);
begin
  GroupBoxBalok.Hide;
  GroupBoxBola.Hide;
  GroupBoxKubus.Hide;
  GroupBoxLS.Show;
  GroupBoxPS.Hide;
  GroupBoxTabung.Hide;
end;

procedure TFormBangunRuang.TabungClick(Sender: TObject);
begin
  GroupBoxBalok.Hide;
  GroupBoxBola.Hide;
  GroupBoxKubus.Hide;
  GroupBoxLS.Hide;
  GroupBoxPS.Hide;
  GroupBoxTabung.Show;
end;

procedure TFormBangunRuang.BolaClick(Sender: TObject);
begin
  GroupBoxBalok.Hide;
  GroupBoxBola.Show;
  GroupBoxKubus.Hide;
  GroupBoxLS.Hide;
  GroupBoxPS.Hide;
  GroupBoxTabung.Hide;
end;

procedure TFormBangunRuang.FormCreate(Sender: TObject);
begin
  GroupBoxBalok.Hide;
  GroupBoxBola.Hide;
  GroupBoxKubus.Hide;
  GroupBoxLS.Hide;
  GroupBoxPS.Hide;
  GroupBoxTabung.Hide;
end;

procedure TFormBangunRuang.ButtonVkClick(Sender: TObject);
var
	s:integer;
begin
	s:=StrToInt(EditSK.Text);
	EditVK.Text:=IntToStr(s*s*s);
end;

procedure TFormBangunRuang.ButtonVBClick(Sender: TObject);
var
	p,l,t:integer;
begin
	p:=StrToInt(EditPB.Text);
	l:=StrToInt(EditLB.Text);
	t:=StrToInt(EditTB.Text);
	EditVB.Text:=IntToStr(p*l*t);
end;

procedure TFormBangunRuang.ButtonVBolaClick(Sender: TObject);
var
	r:integer;
begin
	r:=StrToInt(EditR2.Text);
	EditVBola.Text:=FloatToStr((r*r*r*4*pi)/3);
end;

procedure TFormBangunRuang.ButtonVTClick(Sender: TObject);
var
	r,t:integer;		
begin
  t:=StrToInt(EditT.Text);
	r:=StrToInt(EditR3.Text);
	EditVT.Text:=FloatToStr(2*pi*r*r*t);
end;

procedure TFormBangunRuang.ButtonVPSClick(Sender: TObject);
var
	a,t,tp:integer;	
begin
	a:=StrToInt(EditAP.Text);
	t:=StrToInt(EditTS.Text);
	tp:=StrToInt(EditTP.Text);
	EditVPS.Text:=FloatToStr((a*t/2)*tp);
end;

procedure TFormBangunRuang.ButtonVLSClick(Sender: TObject);
var
	a,t,tl:integer;
begin
	a:=StrToInt(EditAL.Text);
	t:=StrToInt(EditTPL.Text);
	tl:=StrToInt(EditTL.Text);
	EditVLS.Text:=FloatToStr(((a*t)/2)*tl/3);
end;

procedure TFormBangunRuang.KubusClick(Sender: TObject);
begin
  GroupBoxBalok.Hide;
  GroupBoxBola.Hide;
  GroupBoxKubus.Show;
  GroupBoxLS.Hide;
  GroupBoxPS.Hide;
  GroupBoxTabung.Hide;
end;

procedure TFormBangunRuang.BitBtnBackFormBangunRuangClick(Sender: TObject);
begin
  FormGeometri.Show;
  FormBangunRuang.Hide;
end;

end.
