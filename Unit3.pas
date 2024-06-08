unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, Buttons;

type
  TFormMenuUtama = class(TForm)
    GroupBoxMenuUtama: TGroupBox;
    BitBtnTrigonometri: TBitBtn;
    BitBtnKonverter: TBitBtn;
    BitBtnBackTampilanUtama: TBitBtn;
    LabelAllInOne: TLabel;
    BitBtnAljabar: TBitBtn;
    BitBtnGeometri: TBitBtn;
    procedure BitBtnTrigonometriClick(Sender: TObject);
    procedure BitBtnAljabarClick(Sender: TObject);
    procedure BitBtnGeometriClick(Sender: TObject);
    procedure BitBtnKonverterClick(Sender: TObject);
    procedure BitBtnBackTampilanUtamaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMenuUtama: TFormMenuUtama;

implementation

uses Unit4, Unit6, Unit7, Unit8, Unit1;

{$R *.dfm}


procedure TFormMenuUtama.BitBtnTrigonometriClick(Sender: TObject);
begin
  FormTrigonometri.Show;
  FormMenuUtama.Hide;
end;

procedure TFormMenuUtama.BitBtnKonverterClick(Sender: TObject);
begin
  FormKonverterSatuan.Show;
  FormMenuUtama.Hide;
end;

procedure TFormMenuUtama.BitBtnAljabarClick(Sender: TObject);
begin
  FormAljabar.Show;
  FormMenuUtama.Hide;
end;

procedure TFormMenuUtama.BitBtnGeometriClick(Sender: TObject);
begin
  FormGeometri.Show;
  FormMenuUtama.Hide;
end;
procedure TFormMenuUtama.BitBtnBackTampilanUtamaClick(Sender: TObject);
begin
  FormMenuUtama.Hide;
  FormTampilanUtama.Show;
end;

end.
