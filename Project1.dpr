program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {FormTampilanUtama},
  Unit2 in 'Unit2.pas' {Frame2: TFrame},
  Unit3 in 'Unit3.pas' {FormMenuUtama},
  Unit4 in 'Unit4.pas' {FormGeometri},
  Unit5 in 'Unit5.pas' {FormBangunDatar},
  Unit6 in 'Unit6.pas' {FormTrigonometri},
  Unit7 in 'Unit7.pas' {FormKonverterSatuan},
  Unit8 in 'Unit8.pas' {FormAljabar},
  Unit9 in 'Unit9.pas' {FormBangunRuang};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormTampilanUtama, FormTampilanUtama);
  Application.CreateForm(TFormMenuUtama, FormMenuUtama);
  Application.CreateForm(TFormGeometri, FormGeometri);
  Application.CreateForm(TFormBangunDatar, FormBangunDatar);
  Application.CreateForm(TFormTrigonometri, FormTrigonometri);
  Application.CreateForm(TFormKonverterSatuan, FormKonverterSatuan);
  Application.CreateForm(TFormAljabar, FormAljabar);
  Application.CreateForm(TFormBangunRuang, FormBangunRuang);
  Application.Run;
end.
