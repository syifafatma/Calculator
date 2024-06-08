unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Buttons;

type
  TFormBangunDatar = class(TForm)
    MainMenuBangunDatar: TMainMenu;
    PERSEGI1: TMenuItem;
    PERSEGIPANJANG1: TMenuItem;
    LINGKARAN1: TMenuItem;
    SEGITIGA1: TMenuItem;
    TRAPESIUM1: TMenuItem;
    BELAHKETUPAT1: TMenuItem;
    LAYANGLAYANG1: TMenuItem;
    SIKUSIKU1: TMenuItem;
    SAMASISI: TMenuItem;
    SEMBARANG1: TMenuItem;
    GroupBoxTS: TGroupBox;
    LabelAlasTS: TLabel;
    EditAlasTS: TEdit;
    LabelTinggiTS: TLabel;
    EditTinggiTS: TEdit;
    LabelBTS: TLabel;
    EditBTS: TEdit;
    ButtonLuasTS: TButton;
    EditLuasTS: TEdit;
    ButtonKelilingTS: TButton;
    EditKelilingTS: TEdit;
    GroupBoxPersegi: TGroupBox;
    GroupBoxPP: TGroupBox;
    GroupBoxSMB: TGroupBox;
    LabelASMB: TLabel;
    EditASMB: TEdit;
    LabelBSMB: TLabel;
    EditBSMB: TEdit;
    LabelCSMB: TLabel;
    EditCSMB: TEdit;
    ButtonLuasSMB: TButton;
    EditLuasSMB: TEdit;
    ButtonKelilingSMB: TButton;
    EditKelilingSMB: TEdit;
    GroupBoxSMS: TGroupBox;
    GroupBoxSSS: TGroupBox;
    LabelAlasSSS: TLabel;
    EditAlasSSS: TEdit;
    LabelTinggiSSS: TLabel;
    EditTinggiSSS: TEdit;
    LabelTinggiSMS: TLabel;
    EditTinggiSMS: TEdit;
    EditAlasSMS: TEdit;
    LabelAlasSMS: TLabel;
    LabelASMS: TLabel;
    EditASMS: TEdit;
    EditBSMS: TEdit;
    LabelBSMS: TLabel;
    EditCSMS: TEdit;
    LabelCSMS: TLabel;
    ButtonLuasSMS: TButton;
    EditLuasSMS: TEdit;
    ButtonKelilingSMS: TButton;
    EditKelilingSMS: TEdit;
    LabelASSS: TLabel;
    EditA: TEdit;
    EditB: TEdit;
    EditC: TEdit;
    EditLuasSSS: TEdit;
    EditKelilingSSS: TEdit;
    ButtonKelilingSSS: TButton;
    ButtonLuasSSS: TButton;
    LabelBSSS: TLabel;
    LabelCSSS: TLabel;
    GroupBoxBK: TGroupBox;
    LabelD1BK: TLabel;
    EditD1BK: TEdit;
    LabelD2BK: TLabel;
    EditD2BK: TEdit;
    LabelSisiBK: TLabel;
    EditSisiBK: TEdit;
    ButtonLuasBK: TButton;
    EditLuasBK: TEdit;
    ButtonKelilingBK: TButton;
    EditKelilingBK: TEdit;
    GroupBoxLingkaran: TGroupBox;
    ButtonLuasLingkaran: TButton;
    ButtonKelilingLingkaran: TButton;
    ButtonLuasPersegi: TButton;
    ButtonKelilingPersegi: TButton;
    ButtonLuasPP: TButton;
    ButtonKelilingPP: TButton;
    EditKelilingLingkaran: TEdit;
    EditLuasLingkaran: TEdit;
    EditJarijari: TEdit;
    GroupBoxLL: TGroupBox;
    LabelD1: TLabel;
    EditD1: TEdit;
    LabelD2: TLabel;
    EditD2: TEdit;
    LabelSisiA: TLabel;
    EditSisiA: TEdit;
    EditSisiC: TEdit;
    LabelSisiC: TLabel;
    ButtonLuasLL: TButton;
    EditLuasLL: TEdit;
    ButtonKelilingLL: TButton;
    EditKelilingLL: TEdit;
    EditKelilingPP: TEdit;
    EditLuasPP: TEdit;
    EditLebar: TEdit;
    LabelLebar: TLabel;
    EditPanjang: TEdit;
    LabelJariJari: TLabel;
    EditKelilingPersegi: TEdit;
    EditLuasPersegi: TEdit;
    EditPanjangSisi: TEdit;
    LabelPanjangSisi: TLabel;
    LabelPanjang: TLabel;
    BitBtnBackTampilanUtama: TBitBtn;
    procedure PERSEGIPANJANG1Click(Sender: TObject);
    procedure LINGKARAN1Click(Sender: TObject);
    procedure SIKUSIKU1Click(Sender: TObject);
    procedure SAMASISIClick(Sender: TObject);
    procedure SEMBARANG1Click(Sender: TObject);
    procedure TRAPESIUM1Click(Sender: TObject);
    procedure BELAHKETUPAT1Click(Sender: TObject);
    procedure LAYANGLAYANG1Click(Sender: TObject);
    procedure PERSEGI1Click(Sender: TObject);
    procedure ButtonBackClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ButtonLuasPersegiClick(Sender: TObject);
    procedure ButtonKelilingPersegiClick(Sender: TObject);
    procedure ButtonLuasPPClick(Sender: TObject);
    procedure ButtonKelilingPPClick(Sender: TObject);
    procedure ButtonLuasSSSClick(Sender: TObject);
    procedure ButtonKelilingSSSClick(Sender: TObject);
    procedure ButtonLuasSMSClick(Sender: TObject);
    procedure ButtonKelilingSMSClick(Sender: TObject);
    procedure ButtonLuasSMBClick(Sender: TObject);
    procedure ButtonKelilingSMBClick(Sender: TObject);
    procedure ButtonLuasLingkaranClick(Sender: TObject);
    procedure ButtonKelilingLingkaranClick(Sender: TObject);
    procedure ButtonLuasTSClick(Sender: TObject);
    procedure ButtonKelilingTSClick(Sender: TObject);
    procedure ButtonLuasLLClick(Sender: TObject);
    procedure ButtonKelilingLLClick(Sender: TObject);
    procedure ButtonLuasBKClick(Sender: TObject);
    procedure ButtonKelilingBKClick(Sender: TObject);
    procedure BitBtnBackTampilanUtamaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBangunDatar: TFormBangunDatar;

implementation

uses Unit4;

{$R *.dfm}

procedure TFormBangunDatar.PERSEGIPANJANG1Click(Sender: TObject);
begin
  GroupBoxPP.Show;
  GroupBoxPersegi.Hide;
  GroupBoxLingkaran.Hide;
  GroupBoxLL.Hide;
  GroupBoxBK.Hide;
  GroupBoxSSS.Hide;
  GroupBoxSMS.Hide;
  GroupBoxSMB.Hide;
  GroupBoxTS.Hide;
end;

procedure TFormBangunDatar.LINGKARAN1Click(Sender: TObject);
begin
  GroupBoxPP.Hide;
  GroupBoxPersegi.Hide;
  GroupBoxLingkaran.Show;
  GroupBoxLL.Hide;
  GroupBoxBK.Hide;
  GroupBoxSSS.Hide;
  GroupBoxSMS.Hide;
  GroupBoxSMB.Hide;
  GroupBoxTS.Hide;
end;

procedure TFormBangunDatar.SIKUSIKU1Click(Sender: TObject);
begin
  GroupBoxPP.Hide;
  GroupBoxPersegi.Hide;
  GroupBoxLingkaran.Hide;
  GroupBoxLL.Hide;
  GroupBoxBK.Hide;
  GroupBoxSSS.Show;
  GroupBoxSMS.Hide;
  GroupBoxSMB.Hide;
  GroupBoxTS.Hide;
end;

procedure TFormBangunDatar.SAMASISIClick(Sender: TObject);
begin
  GroupBoxPP.Hide;
  GroupBoxPersegi.Hide;
  GroupBoxLingkaran.Hide;
  GroupBoxLL.Hide;
  GroupBoxBK.Hide;
  GroupBoxSSS.Hide;
  GroupBoxSMS.Show;
  GroupBoxSMB.Hide;
  GroupBoxTS.Hide;
end;

procedure TFormBangunDatar.SEMBARANG1Click(Sender: TObject);
begin
  GroupBoxPP.Hide;
  GroupBoxPersegi.Hide;
  GroupBoxLingkaran.Hide;
  GroupBoxLL.Hide;
  GroupBoxBK.Hide;
  GroupBoxSSS.Hide;
  GroupBoxSMS.Hide;
  GroupBoxSMB.Show;
  GroupBoxTS.Hide;
end;

procedure TFormBangunDatar.TRAPESIUM1Click(Sender: TObject);
begin
  GroupBoxPP.Hide;
  GroupBoxPersegi.Hide;
  GroupBoxLingkaran.Hide;
  GroupBoxLL.Hide;
  GroupBoxBK.Hide;
  GroupBoxSSS.Hide;
  GroupBoxSMS.Hide;
  GroupBoxSMB.Hide;
  GroupBoxTS.Show;
end;

procedure TFormBangunDatar.BELAHKETUPAT1Click(Sender: TObject);
begin
  GroupBoxPP.Hide;
  GroupBoxPersegi.Hide;
  GroupBoxLingkaran.Hide;
  GroupBoxLL.Hide;
  GroupBoxBK.Show;
  GroupBoxSSS.Hide;
  GroupBoxSMS.Hide;
  GroupBoxSMB.Hide;
  GroupBoxTS.Hide;
end;

procedure TFormBangunDatar.LAYANGLAYANG1Click(Sender: TObject);
begin
  GroupBoxPP.Hide;
  GroupBoxPersegi.Hide;
  GroupBoxLingkaran.Hide;
  GroupBoxLL.Show;
  GroupBoxBK.Hide;
  GroupBoxSSS.Hide;
  GroupBoxSMS.Hide;
  GroupBoxSMB.Hide;
  GroupBoxTS.Hide;
end;

procedure TFormBangunDatar.PERSEGI1Click(Sender: TObject);
begin
  GroupBoxPP.Hide;
  GroupBoxPersegi.Show;
  GroupBoxLingkaran.Hide;
  GroupBoxLL.Hide;
  GroupBoxBK.Hide;
  GroupBoxSSS.Hide;
  GroupBoxSMS.Hide;
  GroupBoxSMB.Hide;
  GroupBoxTS.Hide;
  end;

procedure TFormBangunDatar.ButtonBackClick(Sender: TObject);
begin
  FormBangunDatar.Hide;
  FormGeometri.Show;
end;

procedure TFormBangunDatar.FormCreate(Sender: TObject);
begin
  GroupBoxPP.Hide;
  GroupBoxPersegi.Hide;
  GroupBoxLingkaran.Hide;
  GroupBoxLL.Hide;
  GroupBoxBK.Hide;
  GroupBoxSSS.Hide;
  GroupBoxSMS.Hide;
  GroupBoxSMB.Hide;
  GroupBoxTS.Hide;
end;

procedure TFormBangunDatar.ButtonLuasPersegiClick(Sender: TObject);
var
  s:integer;
begin
	s:=StrToInt(EditPanjangSisi.Text);
	EditLuasPersegi.Text:=IntToStr(s*s);
end;

procedure TFormBangunDatar.ButtonKelilingPersegiClick(Sender: TObject);
var
	s:integer;
begin
	s:=StrToInt(EditPanjangSisi.Text);
	EditKelilingPersegi.Text:=IntToStr(4*s);
end;

procedure TFormBangunDatar.ButtonLuasPPClick(Sender: TObject);
var
	p,l:integer;
begin
	p:=StrToInt(EditPanjang.Text);
	l:=StrToInt(EditLebar.Text);
	EditLuasPP.Text:=IntToStr(p*l);
end;

procedure TFormBangunDatar.ButtonKelilingPPClick(Sender: TObject);
var
	p,l:integer;
begin
	p:=StrToInt(EditPanjang.Text);
	l:=StrToInt(EditLebar.Text);
	EditKelilingPP.Text:=IntToStr(2*p+2*l);
end;

procedure TFormBangunDatar.ButtonLuasSSSClick(Sender: TObject);
var
	al,t:real;
begin
	al:=StrToFloat(EditAlasSSS.Text);
	t:=StrToFloat(EditTinggiSSS.Text);
	EditLuasSSS.Text:=FloatToStr((al*t)/2);
end;

procedure TFormBangunDatar.ButtonKelilingSSSClick(Sender: TObject);
var
	a,b,c:integer;
begin
	a:=StrToInt(EditA.Text);
	b:=StrToInt(EditB.Text);
	c:=StrToInt(EditC.Text);
	EditKelilingSSS.Text:=IntToStr(a+b+c);
end;

procedure TFormBangunDatar.ButtonLuasSMSClick(Sender: TObject);
var
	al,t:real;
begin
	al:=StrToFloat(EditAlasSMS.Text);
	t:=StrToFloat(EditTinggiSMS.Text);
	EditLuasSMS.Text:=FloatToStr((al*t)/2);
end;

procedure TFormBangunDatar.ButtonKelilingSMSClick(Sender: TObject);
var
	a,b,c:integer;
begin
	a:=StrToInt(EditASMS.Text);
	b:=StrToInt(EditBSMS.Text);
	c:=StrToInt(EditCSMS.Text);
	EditKelilingSMS.Text:=IntToStr(a+b+c);
end;

procedure TFormBangunDatar.ButtonLuasSMBClick(Sender: TObject);
var
	a,b,c:real;
	s:real;
begin
	a:=StrToInt(EditASMB.Text);
	b:=StrToInt(EditBSMB.Text);
	c:=StrToInt(EditCSMB.Text);
	s:=(a+b+c)/2;
	EditLuasSMB.Text:=FloatToStr(sqrt(s*(s-a)*(s-b)*(s-c)))
end;

procedure TFormBangunDatar.ButtonKelilingSMBClick(Sender: TObject);
var
	a,b,c:integer;
begin
	a:=StrToInt(EditASMB.Text);
	b:=StrToInt(EditBSMB.Text);
	c:=StrToInt(EditCSMB.Text);
	EditKelilingSMB.Text:=IntToStr(a+b+c);
end;

procedure TFormBangunDatar.ButtonLuasLingkaranClick(Sender: TObject);
var
	r:real;
begin
	r:=StrToFloat(EditJarijari.Text);
	EditLuasLingkaran.Text:=FloatToStr(pi*r*r);
end;

procedure TFormBangunDatar.ButtonKelilingLingkaranClick(Sender: TObject);
var
	r:real;
begin
	r:=StrToFloat(EditJarijari.Text);
	EditKelilingLingkaran.Text:=FloatToStr(2*pi*r);
end;

procedure TFormBangunDatar.ButtonLuasTSClick(Sender: TObject);
var
	a,b,t:integer;	
begin
	a:=StrToInt(EditAlasTS.Text);
	b:=StrToInt(EditBTS.Text);
	t:=StrToInt(EditTinggiTS.Text);
	EditLuasTS.Text:=FloatToStr(((a+b)*t)/2);
end;

procedure TFormBangunDatar.ButtonKelilingTSClick(Sender: TObject);
var
	a,b,t:integer;	
	h:real;
begin
	a:=StrToInt(EditAlasTS.Text);
	b:=StrToInt(EditBTS.Text);
	t:=StrToInt(EditTinggiTS.Text);
	h:=sqrt(t*t+(a-b)*(a-b));
	EditKelilingTS.Text:=FloatToStr(a+b+t+h);
end;

procedure TFormBangunDatar.ButtonLuasLLClick(Sender: TObject);
var
	d1,d2:integer;
begin
	d1:=StrToInt(EditD1.Text);
	d2:=StrToInt(EditD2.Text);
	EditLuasLL.Text:=FloatToStr((d1*d2)/2);
end;

procedure TFormBangunDatar.ButtonKelilingLLClick(Sender: TObject);
var
	a,c:integer;
begin
	a:=StrToInt(EditSisiA.Text);
	c:=StrToInt(EditSisiC.Text);
	EditKelilingLL.Text:=FloatToStr(2*(a+c));
end;

procedure TFormBangunDatar.ButtonLuasBKClick(Sender: TObject);
var
	d1,d2:integer;
begin
	d1:=StrToInt(EditD1BK.Text);
	d2:=StrToInt(EditD2BK.Text);
	EditLuasBK.Text:=FloatToStr((d1*d2)/2);
end;

procedure TFormBangunDatar.ButtonKelilingBKClick(Sender: TObject);
var
	s:integer;
begin
	s:=StrToInt(EditSisiBK.Text);
	EditKelilingBK.Text:=IntToStr(4*s);
end;

procedure TFormBangunDatar.BitBtnBackTampilanUtamaClick(Sender: TObject);
begin
  FormBangunDatar.Hide;
  FormGeometri.Show;
end;
end.
