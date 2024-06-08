unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg, Buttons;

type
  TFormTampilanUtama = class(TForm)
    Image1: TImage;
    BitBtn1: TBitBtn;
    procedure ButtonPressClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTampilanUtama: TFormTampilanUtama;

implementation

uses Unit3;

{$R *.dfm}

procedure TFormTampilanUtama.ButtonPressClick(Sender: TObject);
begin
  FormMenuUtama.Show;
  FormTampilanUtama.Hide;
end;

procedure TFormTampilanUtama.BitBtn1Click(Sender: TObject);
begin
  FormTampilanUtama.Hide;
  FormMenuUtama.Show;
end;

end.
