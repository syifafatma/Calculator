unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFormGeometri = class(TForm)
    GroupBoxGeometri: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    BitBtnBackTampilanUtama: TBitBtn;
    procedure Button1Click(Sender: TObject);
    procedure ButtonBackGeometriClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure BitBtnBackTampilanUtamaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormGeometri: TFormGeometri;

implementation

uses Unit5, Unit3, Unit9;

{$R *.dfm}

procedure TFormGeometri.Button1Click(Sender: TObject);
begin
  FormBangunDatar.Show;
  FormGeometri.Hide;
  end;

procedure TFormGeometri.ButtonBackGeometriClick(Sender: TObject);
begin
  FormGeometri.Hide;
  FormMenuUtama.Show;
end;

procedure TFormGeometri.Button2Click(Sender: TObject);
begin
  FormBangunRuang.Show;
  FormGeometri.Hide;
end;

procedure TFormGeometri.BitBtnBackTampilanUtamaClick(Sender: TObject);
begin
FormMenuUtama.Show;
  FormGeometri.Hide;
end;

end.
