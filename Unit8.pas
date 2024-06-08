unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Grids, Buttons;

type
  TFormAljabar = class(TForm)
    MainMenu1: TMainMenu;
    CEKBILPRIMA1: TMenuItem;
    FPB1: TMenuItem;
    MATRIKS1: TMenuItem;
    EKSPONEN1: TMenuItem;
    GroupBoxFPB: TGroupBox;
    GroupBoxCekBilPrima: TGroupBox;
    LabelInputBilangan: TLabel;
    ButtonCekPrima: TButton;
    EditInputBilangan: TEdit;
    LabelHasilCekPrima: TLabel;
    EditHasilCekPrima: TEdit;
    LabelYFPB: TLabel;
    LabelXFPB: TLabel;
    EditKPK: TEdit;
    EditFPB: TEdit;
    LabelFPB: TLabel;
    LabelKPK: TLabel;
    EditYFPB: TEdit;
    EditXFPB: TEdit;
    ButtonProses: TButton;
    GroupBoxEksponen: TGroupBox;
    LabelInputA: TLabel;
    LabelInputN: TLabel;
    EditHasilEksponen: TEdit;
    Label1: TLabel;
    ButtonHitungEksponen: TButton;
    EditInputA: TEdit;
    EditInputN: TEdit;
    GroupBoxMatriks: TGroupBox;
    LabelTransposeB: TLabel;
    LabelTransposeA: TLabel;
    LabelDeterminanB: TLabel;
    LabelDeterminanA: TLabel;
    LabelPerkalian: TLabel;
    LabelPenjumlahan: TLabel;
    StringGridMatriks: TStringGrid;
    GroupBox1: TGroupBox;
    RadioButtonJumlah: TRadioButton;
    RadioButtonKali: TRadioButton;
    RadioButtonTransA: TRadioButton;
    RadioButtonTransB: TRadioButton;
    ButtonHitungMatriks: TButton;
    GroupBox2: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    StringGridMatriksB: TStringGrid;
    StringGridMatriksA: TStringGrid;
    BitBtnBackTampilanUtama: TBitBtn;
    procedure FPB1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CEKBILPRIMA1Click(Sender: TObject);
    procedure EKSPONEN1Click(Sender: TObject);
    procedure ButtonProsesClick(Sender: TObject);
    procedure ButtonBackFormAljabarClick(Sender: TObject);
    procedure MATRIKS1Click(Sender: TObject);
    procedure RadioButtonInversMatriksAClick(Sender: TObject);
    procedure RadioButtonJumlahClick(Sender: TObject);
    procedure RadioButtonKaliClick(Sender: TObject);
    procedure RadioButtonDetAClick(Sender: TObject);
    procedure RadioButtonDetBClick(Sender: TObject);
    procedure RadioButtonInversMatriksBClick(Sender: TObject);
    procedure ButtonHitungEksponenClick(Sender: TObject);
    procedure ButtonCekPrimaClick(Sender: TObject);
    procedure ButtonHitungMatriksClick(Sender: TObject);
    procedure BitBtnBackTampilanUtamaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAljabar: TFormAljabar;

implementation

uses Unit3;

{$R *.dfm}

procedure TFormAljabar.FPB1Click(Sender: TObject);
begin
  GroupBoxCekBilPrima.Hide;
  GroupBoxFPB.Show;
  GroupBoxEksponen.Hide;
  GroupBoxMatriks.Hide;
end;

procedure TFormAljabar.FormCreate(Sender: TObject);
begin
  GroupBoxCekBilPrima.Hide;
  GroupBoxFPB.Hide;
  GroupBoxEksponen.Hide;
  GroupBoxMatriks.Hide;
end;

procedure TFormAljabar.CEKBILPRIMA1Click(Sender: TObject);
begin
  GroupBoxCekBilPrima.Show;
  GroupBoxFPB.Hide;
  GroupBoxEksponen.Hide;
  GroupBoxMatriks.Hide;
end;

procedure TFormAljabar.EKSPONEN1Click(Sender: TObject);
begin
  GroupBoxCekBilPrima.Hide;
  GroupBoxFPB.Hide;
  GroupBoxEksponen.Show;
  GroupBoxMatriks.Hide;

end;

procedure TFormAljabar.ButtonProsesClick(Sender: TObject);
  var
    x,y:longint;
  function FPB(x,y:longint):longint;
    begin
      if y = 0  then
        FPB:=x
      else
        FPB := FPB(y, x mod y);
    end;

  function KPK(x,y:longint):longint;
    begin
      KPK:=(x*y) div FPB(x,y);
    end;

begin
   x:=StrToInt(EditXFPB.Text);
   y:=StrToInt(EditYFPB.Text);
   EditFPB.Text:=IntToStr(FPB(x,y));
   EditKPK.Text:=IntToStr(KPK(x,y));
end;

procedure TFormAljabar.ButtonBackFormAljabarClick(Sender: TObject);
begin
  FormMenuUtama.Show;
  FormAljabar.Hide;
end;

procedure TFormAljabar.MATRIKS1Click(Sender: TObject);
begin
  GroupBoxCekBilPrima.Hide;
  GroupBoxFPB.Hide;
  GroupBoxEksponen.Hide;
  GroupBoxMatriks.Show;
  LabelDeterminanA.Hide;
  LabelDeterminanB.Hide;
  LabelTransposeA.Hide;
  LabelTransposeB.Hide;
  LabelPenjumlahan.Hide;
  LabelPerkalian.Hide;
end;

procedure TFormAljabar.RadioButtonInversMatriksAClick(Sender: TObject);
begin
  LabelPerkalian.Hide;
  LabelDeterminanA.Hide;
  LabelDeterminanB.Hide;
  LabelTransposeB.Hide;
  LabelPenjumlahan.Hide;
  LabelTransposeA.Hide;
end;

procedure TFormAljabar.RadioButtonJumlahClick(Sender: TObject);
begin
  LabelPerkalian.Hide;
  LabelDeterminanA.Hide;
  LabelDeterminanB.Hide;
  LabelTransposeB.Hide;
  LabelTransposeA.Hide;
  LabelPenjumlahan.Show;
end;

procedure TFormAljabar.RadioButtonKaliClick(Sender: TObject);
begin
  LabelPenjumlahan.Hide;
  LabelDeterminanA.Hide;
  LabelDeterminanB.Hide;
  LabelTransposeB.Hide;
  LabelTransposeA.Hide;
  LabelPerkalian.Show;
end;

procedure TFormAljabar.RadioButtonDetAClick(Sender: TObject);
begin
  LabelPerkalian.Hide;
  LabelPenjumlahan.Hide;
  LabelDeterminanB.Hide;
  LabelTransposeB.Hide;
  LabelTransposeA.Hide;
  LabelDeterminanA.Show;
end;

procedure TFormAljabar.RadioButtonDetBClick(Sender: TObject);
begin
  LabelPerkalian.Hide;
  LabelDeterminanA.Hide;
  LabelPenjumlahan.Hide;
  LabelTransposeB.Hide;
  LabelTransposeA.Hide;
  LabelDeterminanB.Show;

end;

procedure TFormAljabar.RadioButtonInversMatriksBClick(Sender: TObject);
begin
  LabelPerkalian.Hide;
  LabelDeterminanA.Hide;
  LabelDeterminanB.Hide;
  LabelPenjumlahan.Hide;
  LabelTransposeB.Hide;
  LabelTransposeA.Hide;
end;

PROCEDURE TFormAljabar.ButtonHitungEksponenClick(Sender: TObject);
  var
    a,n:real;
  function pangkat(a,n:real):real;
    begin
      if n=0 then
        pangkat:=1
      else
        pangkat:=a*pangkat(a,n-1);
    end;
BEGIN
  n:=StrToFloat(EditInputN.Text);
  a:=StrToFloat(EditInputA.Text);
  EditHasilEksponen.Text:=FloatToStr(pangkat(a,n));
end;

procedure TFormAljabar.ButtonCekPrimaClick(Sender: TObject);
  var
    p:integer;
    prima:boolean;
  procedure Cek(p:integer;var prima:boolean);
	  var
		  i:integer;
    begin
      prima:=true;
      for i:=2 to p-1 do
        begin
          if (p mod i)=0 then
              prima:=false;
        end;
    end;
  begin
	  p:=StrToInt(EditInputBilangan.Text);
    Cek(p,prima);
	  if prima then
      EditHasilCekPrima.Text:='Bilangan Prima'
    else
      EditHasilCekPrima.Text:='Bukan Bilangan Prima';
  end;
procedure TFormAljabar.ButtonHitungMatriksClick(Sender: TObject);
  const
    NBmaks = 3;
    NKmaks = 3;
  type
    Matriks = array[1..NBmaks,1..NKmaks] of integer;
  Var
    MA, MB, Mt : matriks;

    procedure BacaData;
      var
        i, j : integer;
      begin
        for i := 1 to NBmaks do
          begin
            for j := 1 to NKmaks do
              begin
                MA[i,j] := StrToInt(StringGridMatriksA.Cells[i-1,j-1]);
                MB[i,j] := StrToInt(StringGridMatriksB.Cells[i-1,j-1]);
              end;
          end;
      end;

    Procedure PenjumlahanMatriks;
      var
        i, j : integer;
      begin
        BacaData;
        for i := 1 to NBmaks do
          begin
            for j := 1 to NKmaks do
              begin
                StringGridMatriks.Cells[i-1,j-1]:=IntToStr(MA[i,j]+MB[i,j]);
              end;
          end;
      end;

    Procedure PerkalianMatriks;
      var
        i, j, k, l : integer;
        A : matriks;
      begin
        BacaData;
        for i := 1 to NBmaks do
          begin
            for j := 1 to NKmaks do
              begin
                l:= 0;
                  for k := 1 to NBMaks do
                    begin
                      l := l + MA[k,j]*MB[i,k];
                      A[i,j] := l;
                    end;
              end;
          end;
        for i := 1 to NBmaks do
          begin
            for j := 1 to NKmaks do
              begin
                StringGridMatriks.cells[i-1,j-1]:=IntToStr(A[i,j]);
              end;
          end;
      end;

    procedure TransposeA(NBmaks,NKmaks:integer;MA:Matriks;var Mt:Matriks);
      var
        j,i:integer;
      begin
          for i:= 1 to NBmaks do
              for j:= 1 to NKmaks do
                StringGridMatriks.Cells[j-1,i-1]:=StringGridMatriksA.Cells[i-1,j-1];
      end;

    procedure TransposeB(NBmaks,NKmaks:integer;MB:Matriks;var Mt:Matriks);
      var
        j,i:integer;
      begin
          for i:= 1 to NBmaks do
              for j:= 1 to NKmaks do
                StringGridMatriks.Cells[j-1,i-1]:=StringGridMatriksB.Cells[i-1,j-1];
      end;

BEGIN
  if RadioButtonJumlah.Checked then
    begin
	    PenjumlahanMatriks;
	    LabelPenjumlahan.Show;
      LabelDeterminanA.Hide;
      LabelDeterminanB.Hide;
      LabelTransposeA.Hide;
      LabelTransposeB.Hide;
      LabelPerkalian.Hide;
    end
  else if RadioButtonKali.Checked then
    begin
      PerkalianMatriks;
      LabelPerkalian.Show;
      LabelPenjumlahan.Hide;
      LabelDeterminanA.Hide;
      LabelDeterminanB.Hide;
      LabelTransposeA.Hide;
      LabelTransposeB.Hide;
    end
  else if RadioButtonTransA.Checked then
    begin
      TransposeA(NBmaks,NKmaks,MA,Mt);
      LabelDeterminanB.Hide;
      LabelDeterminanA.Hide;
      LabelPerkalian.Hide;
      LabelPenjumlahan.Hide;
      LabelTransposeA.Show;
      LabelTransposeB.Hide;
    end
  else if RadioButtonTransB.Checked then
    begin
      TransposeB(NBmaks,NKmaks,MB,Mt);
      LabelDeterminanB.Hide;
      LabelDeterminanA.Hide;
      LabelPerkalian.Hide;
      LabelPenjumlahan.Hide;
      LabelTransposeA.Hide;
      LabelTransposeB.Show;
    end;
END;

procedure TFormAljabar.BitBtnBackTampilanUtamaClick(Sender: TObject);
begin
  FormMenuUtama.Show;
  FormAljabar.Hide;
end;

end.
