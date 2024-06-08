unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Buttons;

type
  TFormKonverterSatuan = class(TForm)
    MainMenu1: TMainMenu;
    SUHU1: TMenuItem;
    MATAUANG1: TMenuItem;
    WAKTU1: TMenuItem;
    GroupBoxSuhu: TGroupBox;
    GroupBoxAsal: TGroupBox;
    LabelSuhuAsal: TLabel;
    EditSuhuAsal: TEdit;
    ComboBoxSuhuAsal: TComboBox;
    GroupBoxHasil: TGroupBox;
    Label1: TLabel;
    ComboBoxHasil: TComboBox;
    ButtonProses: TButton;
    GroupboxMataUang: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    ButtonProsesMU: TButton;
    ComboBoxMUAsal: TComboBox;
    ComboBoxMUHasil: TComboBox;
    EditMUAsal: TEdit;
    GroupBoxWaktu: TGroupBox;
    DARI: TGroupBox;
    ComboBoxWaktuAsal: TComboBox;
    EditWaktuAsal: TEdit;
    KE: TGroupBox;
    ComboBoxHasilWaktu: TComboBox;
    ButtonProsesWaktu: TButton;
    EditHasilKonversiSuhu: TEdit;
    EditHasilWaktu: TEdit;
    EditMUHasil: TEdit;
    BitBtnBackTampilanUtama: TBitBtn;
    procedure ButtonBackKonverterClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SUHU1Click(Sender: TObject);
    procedure MATAUANG1Click(Sender: TObject);
    procedure WAKTU1Click(Sender: TObject);
    procedure ButtonProsesClick(Sender: TObject);
    procedure ButtonProsesWaktuClick(Sender: TObject);
    procedure ButtonProsesMUClick(Sender: TObject);
    procedure BitBtnBackTampilanUtamaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormKonverterSatuan: TFormKonverterSatuan;

implementation

uses Unit3;

{$R *.dfm}

procedure TFormKonverterSatuan.ButtonBackKonverterClick(Sender: TObject);
begin
  FormKonverterSatuan.Hide;
  FormMenuUtama.Show;
end;

procedure TFormKonverterSatuan.FormCreate(Sender: TObject);
begin
  GroupBoxSuhu.Hide;
  GroupBoxWaktu.Hide;
  GroupboxMataUang.Hide;

end;

procedure TFormKonverterSatuan.SUHU1Click(Sender: TObject);
begin
    GroupBoxSuhu.Show;
    GroupBoxWaktu.Hide;
    GroupboxMataUang.Hide;

    EditSuhuAsal.Clear;
    EditHasilKonversiSuhu.Clear;
    ComboBoxSuhuAsal.Clear;
    ComboBoxSuhuAsal.Items.Add('CELCIUS');
    ComboBoxSuhuAsal.Items.Add('REAMUR');
    ComboBoxSuhuAsal.Items.Add('KELVIN');
    ComboBoxSuhuAsal.Items.Add('FAHRENHEIT');
    ComboBoxHasil.Clear;
    ComboBoxHasil.Items.Add('CELCIUS');
    ComboBoxHasil.Items.Add('REAMUR');
    ComboBoxHasil.Items.Add('KELVIN');
    ComboBoxHasil.Items.Add('FAHRENHEIT');

end;

procedure TFormKonverterSatuan.MATAUANG1Click(Sender: TObject);
begin
    GroupBoxSuhu.Hide;
    GroupBoxWaktu.Hide;
    GroupboxMataUang.Show;

    EditMUAsal.Clear;
    EditMUHasil.Clear;
    ComboBoxMUAsal.Clear;
    ComboBoxMUAsal.Items.Add('IDR-INDONESIAN RUPIAH');
    ComboBoxMUAsal.Items.Add('AUD-AUSTRALIAN DOLLAR');
    ComboBoxMUAsal.Items.Add('BND-BRUNEI DOLLAR');
    ComboBoxMUAsal.Items.Add('CAD-CANADIAN DOLLAR');
    ComboBoxMUAsal.Items.Add('CHF-SWISS FRANC');
    ComboBoxMUAsal.Items.Add('CNH-CHINESE YUAN(OFFSHORE)');
    ComboBoxMUAsal.Items.Add('CNY-CHINESE YUAN');
    ComboBoxMUAsal.Items.Add('DKK-DANISH KRONE');
    ComboBoxMUAsal.Items.Add('GBP-BRITISH POUND STERLING');
    ComboBoxMUAsal.Items.Add('HKD-HONG KONG DOLLAR');
    ComboBoxMUAsal.Items.Add('JPY-JAPANESE YEN');
    ComboBoxMUAsal.Items.Add('KRW-SOUTH KOREAN WON');
    ComboBoxMUAsal.Items.Add('KWD-KUWAITI DINAR');
    ComboBoxMUAsal.Items.Add('LAK-LAOTIAN KIP');
    ComboBoxMUAsal.Items.Add('MYR-MALAYSIAN RINGGIT');
    ComboBoxMUAsal.Items.Add('NOK-NORWEGIAN KRONE');
    ComboBoxMUAsal.Items.Add('NZD-NEW ZEALAND DOLLAR');
    ComboBoxMUAsal.Items.Add('PGK-PAPUA NEW GUINEAN KINA');
    ComboBoxMUAsal.Items.Add('PHP-PHILIPPINE PESO');
    ComboBoxMUAsal.Items.Add('SAR-SAUDI RIYAL');
    ComboBoxMUAsal.Items.Add('SEK-SWEDISH KRONA');
    ComboBoxMUAsal.Items.Add('SGD-SINGAPORE DOLLAR');
    ComboBoxMUAsal.Items.Add('THB-THAI BAHT');
    ComboBoxMUAsal.Items.Add('USD-UNITED STATES DOLLAR');
    ComboBoxMUAsal.Items.Add('VND-VIETNAM DONG');
    ComboBoxMUHasil.Items.Clear;
    ComboBoxMUHasil.Items.Add('IDR-INDONESIAN RUPIAH');
    ComboBoxMUHasil.Items.Add('AUD-AUSTRALIAN DOLLAR');
    ComboBoxMUHasil.Items.Add('BND-BRUNEI DOLLAR');
    ComboBoxMUHasil.Items.Add('CAD-CANADIAN DOLLAR');
    ComboBoxMUHasil.Items.Add('CHF-SWISS FRANC');
    ComboBoxMUHasil.Items.Add('CNH-CHINESE YUAN(OFFSHORE)');
    ComboBoxMUHasil.Items.Add('CNY-CHINESE YUAN');
    ComboBoxMUHasil.Items.Add('DKK-DANISH KRONE');
    ComboBoxMUHasil.Items.Add('GBP-BRITISH POUND STERLING');
    ComboBoxMUHasil.Items.Add('HKD-HONG KONG DOLLAR');
    ComboBoxMUHasil.Items.Add('JPY-JAPANESE YEN');
    ComboBoxMUHasil.Items.Add('KRW-SOUTH KOREAN WON');
    ComboBoxMUHasil.Items.Add('KWD-KUWAITI DINAR');
    ComboBoxMUHasil.Items.Add('LAK-LAOTIAN KIP');
    ComboBoxMUHasil.Items.Add('MYR-MALAYSIAN RINGGIT');
    ComboBoxMUHasil.Items.Add('NOK-NORWEGIAN KRONE');
    ComboBoxMUHasil.Items.Add('NZD-NEW ZEALAND DOLLAR');
    ComboBoxMUHasil.Items.Add('PGK-PAPUA NEW GUINEAN KINA');
    ComboBoxMUHasil.Items.Add('PHP-PHILIPPINE PESO');
    ComboBoxMUHasil.Items.Add('SAR-SAUDI RIYAL');
    ComboBoxMUHasil.Items.Add('SEK-SWEDISH KRONA');
    ComboBoxMUHasil.Items.Add('SGD-SINGAPORE DOLLAR');
    ComboBoxMUHasil.Items.Add('THB-THAI BAHT');
    ComboBoxMUHasil.Items.Add('USD-UNITED STATES DOLLAR');
    ComboBoxMUHasil.Items.Add('VND-VIETNAM DONG');
end;

procedure TFormKonverterSatuan.WAKTU1Click(Sender: TObject);
begin
    GroupBoxSuhu.Hide;
    GroupBoxWaktu.Show;
    GroupboxMataUang.Hide;

    EditWaktuAsal.Clear;
    EditHasilWaktu.Clear;
    ComboBoxWaktuAsal.Clear;
    ComboBoxWaktuAsal.Items.Add('JAM');
    ComboBoxWaktuAsal.Items.Add('MENIT');
    ComboBoxWaktuAsal.Items.Add('DETIK');
    ComboBoxHasilWaktu.Clear;
    ComboBoxHasilWaktu.Items.Add('JAM');
    ComboBoxHasilWaktu.Items.Add('MENIT');
    ComboBoxHasilWaktu.Items.Add('DETIK');
end;

PROCEDURE TFormKonverterSatuan.ButtonProsesClick(Sender: TObject);
var
  SuhuAsal, Hasil:Real;
procedure KonvertSuhuCelcius;
  begin
    if ComboBoxHasil.Text='FAHRENHEIT'then
        Hasil:=(SuhuAsal*9/5)+32
    else if ComboBoxHasil.Text='REAMUR'then
        Hasil:=(SuhuAsal*4/5)
    else if ComboBoxHasil.Text='KELVIN'then
        Hasil:=(SuhuAsal+273)
    else
        Hasil:=SuhuAsal;
  end;
procedure KonvertSuhuReamur;
  begin
    if ComboBoxHasil.Text='FAHRENHEIT'then
        Hasil:=(SuhuAsal*9/4)+32
    else if ComboBoxHasil.Text='CELCIUS'then
        Hasil:=(SuhuAsal*5/4)
    else if ComboBoxHasil.Text='KELVIN'then
        Hasil:=(SuhuAsal*5/4)+273
    else
        Hasil:=SuhuAsal;
  end;
procedure KonvertSuhuFahrenheit;
  begin
    if ComboBoxHasil.Text='CELCIUS'then
        Hasil:=5/9*(SuhuAsal-32)
    else if ComboBoxHasil.Text='REAMUR'then
        Hasil:=4/9*(SuhuAsal-32)
    else if ComboBoxHasil.Text='KELVIN'then
        Hasil:=5/9*(SuhuASal-32)+273
    else
        Hasil:=SuhuASal;
  end;
procedure KonvertSuhuKelvin;
  begin
    if ComboBoxHasil.Text='CELCIUS'then
        Hasil:=SuhuAsal-273
    else if ComboBoxHasil.Text='REAMUR'then
        Hasil:=4/5*(SuhuAsal-273)
    else if ComboBoxHasil.Text='FAHRENHEIT'then
        Hasil:=9/5*(SuhuASal-273)+32
    else
        Hasil:=SuhuASal;
  end;
procedure KonvertSuhu;
  begin
    if ComboBoxSuhuAsal.Text='CELCIUS'then
      KonvertSuhuCelcius
    else if ComboBoxSuhuAsal.Text='REAMUR'then
      KonvertSuhuReamur
    else if ComboBoxSuhuAsal.Text='KELVIN'then
      KonvertSuhuKelvin
    else
      KonvertSuhuFahrenheit;
    EditHasilKonversiSuhu.Text:=FloatToStr(Hasil);
  end;

BEGIN
  SuhuAsal:=StrToFloat(EditSuhuAsal.Text);
  KonvertSuhu;
END;

procedure TFormKonverterSatuan.ButtonProsesWaktuClick(Sender: TObject);
  var
    WaktuAwal:integer;
    Hasil:real;
  procedure KonvertJam;
    begin
      if ComboBoxHasilWaktu.Text='MENIT'then
        Hasil:=(WaktuAwal*60)
      else if ComboBoxHasilWaktu.Text='DETIK'then
        Hasil:=(WaktuAwal*3600)
      else
        Hasil:=WaktuAwal;
    end;
  procedure KonvertMenit;
    begin
      if ComboBoxHasilWaktu.Text='JAM'then
        Hasil:=(WaktuAwal/60)
      else if ComboBoxHasilWaktu.Text='DETIK'then
        Hasil:=(WaktuAwal*60)
      else
        Hasil:=WaktuAwal;
    end;
  procedure KonvertDetik;
    begin
      if ComboBoxHasilWaktu.Text='JAM'then
        Hasil:=(WaktuAwal/3600)
      else if ComboBoxHasilWaktu.Text='MENIT'then
        Hasil:=(WaktuAwal/60)
      else
        Hasil:=WaktuAwal;
    end;
  procedure KonvertWaktu;
    begin
      if ComboBoxWaktuAsal.Text='JAM'then
        KonvertJam
      else if ComboBoxWaktuAsal.Text='MENIT'then
        KonvertMenit
      else
        KonvertDetik;
      EditHasilWaktu.Text:=FloatToStr(Hasil);
    end;
BEGIN
  WaktuAwal:=StrToInt(EditWaktuAsal.Text);
  KonvertWaktu;
END;

procedure TFormKonverterSatuan.ButtonProsesMUClick(Sender: TObject);
  var
    x:real;
    Hasil:real;
  procedure KonvertIDR;
    begin
      if(ComboBoxMUHasil.Text='AUD-AUSTRALIAN DOLLAR') then
	    	Hasil:=(x*0.000094)
      else if (ComboBoxMUHasil.Text='BND-BRUNEI DOLLAR') then
		    Hasil:=(x*0.000085)
      else if (ComboBoxMUHasil.Text='CAD-CANADIAN DOLLAR') then
		    Hasil:=(x*0.000086)
      else if (ComboBoxMUHasil.Text='CHF-SWISS FRANC') then
        Hasil:=(x*0.000059)
      else if (ComboBoxMUHasil.Text='CNH-CHINESE YUAN(OFFSHORE)') then
		    Hasil:=(x*0.000443)
      else if (ComboBoxMUHasil.Text='CNY-CHINESE YUAN') then
		    Hasil:=(x*0.000442)
      else if (ComboBoxMUHasil.Text='DKK-DANISH KRONE') then
		    Hasil:=(x*0.000443)
      else if (ComboBoxMUHasil.Text='GBP-BRITISH POUND STERLING') then
		    Hasil:=(x*0.000053)
      else if (ComboBoxMUHasil.Text='HKD-HONG KONG DOLLAR') then
		    Hasil:=(x*0.000494)
      else if (ComboBoxMUHasil.Text='JPY-JAPANESE YEN') then
        Hasil:=(x*0.00847)
      else if (ComboBoxMUHasil.Text='KRW-SOUTH KOREAN WON') then
		    Hasil:=(x*0.00803)
      else if (ComboBoxMUHasil.Text='KWD-KUWAITI DINAR') then
		    Hasil:=(x*0.000019)
      else if (ComboBoxMUHasil.Text='LAK-LAOTIAN KIP') then
		    Hasil:=(x*1.0967)
      else if (ComboBoxMUHasil.Text='MYR-MALAYSIAN RINGGIT') then
		    Hasil:=(x*0.00028)
      else if (ComboBoxMUHasil.Text='NOK-NORWEGIAN KRONE') then
	    	Hasil:=(x*0.000626)
      else if (ComboBoxMUHasil.Text='NZD-NEW ZEALAND DOLLAR') then
		    Hasil:=(x*0.0001)
      else if (ComboBoxMUHasil.Text='PGK-PAPUA NEW GUINEAN KINA') then
		    Hasil:=(x*0.000223)
      else if (ComboBoxMUHasil.Text='PHP-PHILIPPINE PESO') then
		    Hasil:=(x*0.00353)
      else if (ComboBoxMUHasil.Text='SAR-SAUDI RIYAL') then
        Hasil:=(x*0.000238)
      else if (ComboBoxMUHasil.Text='SEK-SWEDISH KRONA-SWEDISH KRONA') then
		    Hasil:=(x*0.000662)
      else if (ComboBoxMUHasil.Text='SGD-SINGAPORE DOLLAR') then
		    Hasil:=(x*0.000085)
      else if (ComboBoxMUHasil.Text='THB-THAI BAHT') then
		    Hasil:=(x*0.002196)
      else if (ComboBoxMUHasil.Text='USD-UNITED STATES DOLLAR') then
		    Hasil:=(x*0.000063)
      else if (ComboBoxMUHasil.Text='VND-VIETNAM DONG') then
		    Hasil:=(x*1.496)
      else if (ComboBoxMUHasil.Text='IDR-INDONESIAN RUPIAH') then
			  Hasil:=x;
    end;
  procedure KonvertAUD;
    begin
      if (ComboBoxMUHasil.Text='IDR-INDONESIAN RUPIAH') then
			  Hasil:=(x*10488.84)
		  else if (ComboBoxMUHasil.Text='BND-BRUNEI DOLLAR') then
			  Hasil:=(x*0.907)
		  else if (ComboBoxMUHasil.Text='CAD-CANADIAN DOLLAR') then
			  Hasil:=(x*0.916)
		  else if (ComboBoxMUHasil.Text='CHF-SWISS FRANC') then
			  Hasil:=(x*0.627)
		  else if (ComboBoxMUHasil.Text='CNH-CHINESE YUAN(OFFSHORE)') then
			  Hasil:=(x*4.70)
		  else if (ComboBoxMUHasil.Text='CNY-CHINESE YUAN') then
			  Hasil:=(x*4.697)
		  else if (ComboBoxMUHasil.Text='DKK-DANISH KRONE') then
			  Hasil:=(x*4.708)
	   	else if (ComboBoxMUHasil.Text='GBP-BRITISH POUND STERLING') then
		  	Hasil:=(x*0.557)
	   	else if (ComboBoxMUHasil.Text='HKD-HONG KONG DOLLAR') then
			  Hasil:=(x*5.245)
		  else if (ComboBoxMUHasil.Text='JPY-JAPANESE YEN') then
		   	Hasil:=(x*89.21780)
	  	else if (ComboBoxMUHasil.Text='KRW-SOUTH KOREAN WON') then
		  	Hasil:=(x*860.321)
  		else if (ComboBoxMUHasil.Text='KWD-KUWAITI DINAR') then
		  	Hasil:=(x*0.20)
	  	else if (ComboBoxMUHasil.Text='LAK-LAOTIAN KIP') then
		  	Hasil:=(x*11652.442)
      else if (ComboBoxMUHasil.Text='MYR-MALAYSIAN RINGGIT') then
			  Hasil:=(x*2.973)
		  else if (ComboBoxMUHasil.Text='NOK-NORWEGIAN KRONE') then
			  Hasil:=(x*6.642)
		  else if (ComboBoxMUHasil.Text='NZD-NEW ZEALAND DOLLAR') then
		  	Hasil:=(x*1.067)
		  else if (ComboBoxMUHasil.Text='PGK-PAPUA NEW GUINEAN KINA') then
			  Hasil:=(x*2.365)
      else if (ComboBoxMUHasil.Text='PHP-PHILIPPINE PESO') then
		  	Hasil:=(x*37.111)
		  else if (ComboBoxMUHasil.Text='SAR-SAUDI RIYAL') then
		  	Hasil:=(x*2.527)
		  else if (ComboBoxMUHasil.Text='SEK-SWEDISH KRONA-SWEDISH KRONA') then
			  Hasil:=(x*7.077)
		  else if (ComboBoxMUHasil.Text='SGD-SINGAPORE DOLLAR') then
			  Hasil:=(x*0.908)
		  else if (ComboBoxMUHasil.Text='THB-THAI BAHT') then
			  Hasil:=(x*23.355)
		  else if (ComboBoxMUHasil.Text='USD-UNITED STATES DOLLAR') then
			  Hasil:=(x*0.671)
		  else if (ComboBoxMUHasil.Text='VND-VIETNAM DONG') then
			  Hasil:=(x*15892.749)
      else 
			  Hasil:=x;
    end;

  procedure KonvertBND;
    begin
    if (ComboBoxMUHasil.Text='IDR-INDONESIAN RUPIAH') then
			Hasil:=(x*11510.41)
		else if (ComboBoxMUHasil.Text='AUD-AUSTRALIAN DOLLAR') then
			Hasil:=(x*1.102)
		else if (ComboBoxMUHasil.Text='CAD-CANADIAN DOLLAR') then
			Hasil:=(x*1.010)
		else if (ComboBoxMUHasil.Text='CHF-SWISS FRANC') then
			Hasil:=(x*0.627)
		else if (ComboBoxMUHasil.Text='CNH-CHINESE YUAN(OFFSHORE)') then
			Hasil:=(x*0.691)
		else if (ComboBoxMUHasil.Text='CNY-CHINESE YUAN') then
			Hasil:=(x*5.17)
		else if (ComboBoxMUHasil.Text='DKK-DANISH KRONE') then
			Hasil:=(x*5.189)
		else if (ComboBoxMUHasil.Text='GBP-BRITISH POUND STERLING') then
			Hasil:=(x*0.614)
		else if (ComboBoxMUHasil.Text='HKD-HONG KONG DOLLAR') then
			Hasil:=(x*5.780)
		else if (ComboBoxMUHasil.Text='JPY-JAPANESE YEN') then
			Hasil:=(x*98.31964)
		else if (ComboBoxMUHasil.Text='KRW-SOUTH KOREAN WON') then
			Hasil:=(x*948.090)
		else if (ComboBoxMUHasil.Text='KWD-KUWAITI DINAR') then
			Hasil:=(x*0.22)
		else if (ComboBoxMUHasil.Text='LAK-LAOTIAN KIP') then
			Hasil:=(x*12841.20)
		else if (ComboBoxMUHasil.Text='MYR-MALAYSIAN RINGGIT') then
			Hasil:=(x*3.276)
		else if (ComboBoxMUHasil.Text='NOK-NORWEGIAN KRONE') then
			Hasil:=(x*7.320)
		else if (ComboBoxMUHasil.Text='NZD-NEW ZEALAND DOLLAR') then
			Hasil:=(x*1.176)
		else if (ComboBoxMUHasil.Text='PGK-PAPUA NEW GUINEAN KINA') then
			Hasil:=(x*2.60)
		else if (ComboBoxMUHasil.Text='PHP-PHILIPPINE PESO') then
			Hasil:=(x*40.897)
		else if (ComboBoxMUHasil.Text='SAR-SAUDI RIYAL') then
			Hasil:=(x*2.784)
		else if (ComboBoxMUHasil.Text='SEK-SWEDISH KRONA') then
			Hasil:=(x*7.799)
		else if (ComboBoxMUHasil.Text='SGD-SINGAPORE DOLLAR') then
			Hasil:=(x*1.000785)
		else if (ComboBoxMUHasil.Text='THB-THAI BAHT') then
			Hasil:=(x*25.737)
		else if (ComboBoxMUHasil.Text='USD-UNITED STATES DOLLAR') then
			Hasil:=(x*0.740)
		else if (ComboBoxMUHasil.Text='VND-VIETNAM DONG') then
			Hasil:=(x*17514.1)
    else if (ComboBoxMUHasil.Text='BND-BRUNEI DOLLAR') then
      Hasil:=x;
    end;

  procedure KonvertCAD;
    begin
      if (ComboBoxMUHasil.Text='IDR-INDONESIAN RUPIAH') then
            Hasil:=(x*11428.208)
        else if (ComboBoxMUHasil.Text='AUD-AUSTRALIAN DOLLAR') then
            Hasil:=(x*1.090)
        else if (ComboBoxMUHasil.Text='BND-BRUNEI DOLLAR') then
            Hasil:=(x*0.989)
        else if (ComboBoxMUHasil.Text='NOK-NORWEGIAN KRONE') then
            Hasil:=(x*7.278)
        else if (ComboBoxMUHasil.Text='CHF-SWISS FRANC') then
            Hasil:=(x*0.684)
        else if (ComboBoxMUHasil.Text='CNH-CHINESE YUAN(OFFSHORE)') then
            Hasil:=(x*5.13)
        else if (ComboBoxMUHasil.Text='CNY-CHINESE YUAN') then
            Hasil:=(x*5.122)
        else if (ComboBoxMUHasil.Text='DKK-DANISH KRONE') then
            Hasil:=(x*5.135)
        else if (ComboBoxMUHasil.Text='GBP-BRITISH POUND') then
            Hasil:=(x*0.608)
        else if (ComboBoxMUHasil.Text='HKD-HONG KONG DOLLAR') then
            Hasil:=(x*5.72)
        else if (ComboBoxMUHasil.Text='JPY-JAPANESE YEN') then
            Hasil:=(x*97.30294)
        else if (ComboBoxMUHasil.Text='KRW-SOUTH KOREAN WON') then
            Hasil:=(x*938.286)
        else if (ComboBoxMUHasil.Text='KWD-KUWAITI DINAR') then
            Hasil:=(x*0.224)
        else if (ComboBoxMUHasil.Text='LAK-LAOTIAN KIP') then
            Hasil:=(x*12708.417)
        else if (ComboBoxMUHasil.Text='MYR-MALAYSIAN RINGGIT') then
            Hasil:=(x*3.243)
        else if (ComboBoxMUHasil.Text='NZD-NEW ZEALAND DOLLAR') then
            Hasil:=(x*1.164)
        else if (ComboBoxMUHasil.Text='PGK-PAPUA NEW GUINEAN KINA') then
            Hasil:=(x*2.579)
        else if (ComboBoxMUHasil.Text='PHP-PHILIPPINE PESO') then
            Hasil:=(x*40.474)
        else if (ComboBoxMUHasil.Text='SAR-SAUDI RIYAL') then
            Hasil:=(x*2.756)
        else if (ComboBoxMUHasil.Text='SEK-SWEDISH KRONA') then
            Hasil:=(x*7.718)
        else if (ComboBoxMUHasil.Text='SGD-SINGAPORE DOLLAR') then
            Hasil:=(x*0.990)
        else if (ComboBoxMUHasil.Text='THB-THAI BAHT-THAI BAHT') then
            Hasil:=(x*25.471)
        else if (ComboBoxMUHasil.Text='USD-UNITED STATES DOLLAR') then
            Hasil:=(x*0.732)
        else if (ComboBoxMUHasil.Text='VND-VIETNAM DONG-VIETNAM DONG') then
            Hasil:=(x*17285.352)
        else
            Hasil:=(x);
        end;

  procedure KonvertCHF;
    begin
        if (ComboBoxMUHasil.Text='IDR-INDONESIAN RUPIAH') then
            Hasil:=(x*16965.323)
        else if (ComboBoxMUHasil.Text='AUD-AUSTRALIAN DOLLAR') then
            Hasil:=(x*1.597)
        else if (ComboBoxMUHasil.Text='BND-BRUNEI DOLLAR') then
            Hasil:=(x*1.454)
        else if (ComboBoxMUHasil.Text='NOK-NORWEGIAN KRONE') then
            Hasil:=(x*10.663)
        else if (ComboBoxMUHasil.Text='CHF-SWISS FRANC') then
            Hasil:=(x)
        else if (ComboBoxMUHasil.Text='CNH-CHINESE YUAN(OFFSHORE)') then
            Hasil:=(x*7.5227)
        else if (ComboBoxMUHasil.Text='CNY-CHINESE YUAN') then
            Hasil:=(x*7.518)
        else if (ComboBoxMUHasil.Text='DKK-DANISH KRONE') then
            Hasil:=(x*7.5474)
        else if (ComboBoxMUHasil.Text='GBP-BRITISH POUND STERLING') then
            Hasil:=(x*0.8958)
        else if (ComboBoxMUHasil.Text='HKD-HONG KONG DOLLAR') then
            Hasil:=(x*8.403)
        else if (ComboBoxMUHasil.Text='JPY-JAPANESE YEN') then
            Hasil:=(x*144.228)
        else if (ComboBoxMUHasil.Text='KRW-SOUTH KOREAN WON') then
            Hasil:=(x*9.478)
        else if (ComboBoxMUHasil.Text='KWD-KUWAITI DINAR') then
            Hasil:=(x*0.330)
        else if (ComboBoxMUHasil.Text='LAK-LAOTIAN KIP') then
            Hasil:=(x*18673.281)
        else if (ComboBoxMUHasil.Text='MYR-MALAYSIAN RINGGIT') then
            Hasil:=(x*4.7669)
        else if (ComboBoxMUHasil.Text='CAD-CANADIAN DOLLAR') then
            Hasil:=(x*1.4650)
        else if (ComboBoxMUHasil.Text='NZD-NEW ZEALAND DOLLAR') then
            Hasil:=(x*1.7012)
        else if (ComboBoxMUHasil.Text='PGK-PAPUA NEW GUINEAN KINA') then
            Hasil:=(x*3.0866)
        else if (ComboBoxMUHasil.Text='PHP-PHILIPPINE PESO')then
            Hasil:=(x*60.156)
        else if (ComboBoxMUHasil.Text='SAR-SAUDI RIYAL') then
            Hasil:=(x*4.053)
        else if (ComboBoxMUHasil.Text='SEK-SWEDISH KRONA') then
            Hasil:=(x*11.283)
        else if (ComboBoxMUHasil.Text='SGD-SINGAPORE DOLLAR') then
            Hasil:=(x*1.454)
        else if (ComboBoxMUHasil.Text='THB-THAI BAHT') then
            Hasil:=(x*37.344)
        else if (ComboBoxMUHasil.Text='USD-UNITED STATES DOLLAR') then
            Hasil:=(x*1.078)
        else if (ComboBoxMUHasil.Text='VND-VIETNAM DONG') then
            Hasil:=(x*25534.63);
    end;

  procedure KonvertCNH;
    begin
        if (ComboBoxMUHasil.Text='IDR-INDONESIAN RUPIAH') then
            Hasil:=(x*2245.35)
        else if (ComboBoxMUHasil.Text='AUD-AUSTRALIAN DOLLAR') then
            Hasil:=(x*0.212)
        else if (ComboBoxMUHasil.Text='BND-BRUNEI DOLLAR') then
            Hasil:=(x*0.193)
        else if (ComboBoxMUHasil.Text='NOK-NORWEGIAN KRONE') then
            Hasil:=(x*1.412)
        else if (ComboBoxMUHasil.Text='CHF-SWISS FRANC') then
            Hasil:=(x*0.133)
        else if (ComboBoxMUHasil.Text='CNH-CHINESE YUAN(OFFSHORE)') then
            Hasil:=(x)
        else if (ComboBoxMUHasil.Text='CNY-CHINESE YUAN') then
            Hasil:=(x*0.998)
        else if (ComboBoxMUHasil.Text='DKK-DANISH KRONE') then
            Hasil:=(x*1.002)
        else if (ComboBoxMUHasil.Text='GBP-BRITISH POUND STERLING') then
            Hasil:=(x*0.118)
        else if (ComboBoxMUHasil.Text='HKD-HONG KONG DOLLAR') then
            Hasil:=(x*1.119)
        else if (ComboBoxMUHasil.Text='JPY-JAPANESE YEN') then
            Hasil:=(x*19.07196)
        else if (ComboBoxMUHasil.Text='KRW-SOUTH KOREAN WON') then
            Hasil:=(x*181.879)
        else if (ComboBoxMUHasil.Text='KWD-KUWAITI DINAR') then
            Hasil:=(x*0.043)
        else if (ComboBoxMUHasil.Text='LAK-LAOTIAN KIP') then
            Hasil:=(x*2477.138)
        else if (ComboBoxMUHasil.Text='MYR-MALAYSIAN RINGGIT') then
            Hasil:=(x*0.634)
        else if (ComboBoxMUHasil.Text='CAD-CANADIAN DOLLAR') then
            Hasil:=(x*0.194)
        else if (ComboBoxMUHasil.Text='NZD-NEW ZEALAND DOLLAR') then
            Hasil:=(x*0.228)
        else if (ComboBoxMUHasil.Text='PGK-PAPUA NEW GUINEAN KINA') then
            Hasil:=(x*0.504)
        else if (ComboBoxMUHasil.Text='PHP-PHILIPPINE PESO') then
            Hasil:=(x*7.965)
        else if (ComboBoxMUHasil.Text='SAR-SAUDI RIYAL') then
            Hasil:=(x*0.539)
        else if (ComboBoxMUHasil.Text='SEK-SWEDISH KRONA') then
            Hasil:=(x*1.504)
        else if (ComboBoxMUHasil.Text='SGD-SINGAPORE DOLLAR') then
            Hasil:=(x*0.193)
        else if (ComboBoxMUHasil.Text='THB-THAI BAHT') then
            Hasil:=(x*4.97)
        else if (ComboBoxMUHasil.Text='USD-UNITED STATES DOLLAR') then
            Hasil:=(x*0.143)
        else if (ComboBoxMUHasil.Text='VND-VIETNAM DONG') then
            Hasil:=(x*3384.917);
    end;

  procedure KonvertCNY;
    begin
        if (ComboBoxMUHasil.Text='IDR-INDONESIAN RUPIAH') then
            Hasil:=(x*2247.583)
        else if (ComboBoxMUHasil.Text='AUD-AUSTRALIAN DOLLAR') then
            Hasil:=(x*0.212)
        else if (ComboBoxMUHasil.Text='BND-BRUNEI DOLLAR') then
            Hasil:=(x*0.193)
        else if (ComboBoxMUHasil.Text='NOK-NORWEGIAN KRONE') then
            Hasil:=(x*1.411)
        else if (ComboBoxMUHasil.Text='CHF-SWISS FRANC') then
            Hasil:=(x*0.133)
        else if (ComboBoxMUHasil.Text='CNH-CHINESE YUAN(OFFSHORE)') then
            Hasil:=(x*1)
        else if (ComboBoxMUHasil.Text='CNY-CHINESE YUAN') then
            Hasil:=(x)
        else if (ComboBoxMUHasil.Text='DKK-DANISH KRONE') then
            Hasil:=(x*1.003)
        else if (ComboBoxMUHasil.Text='GBP-BRITISH POUND STERLING') then
            Hasil:=(x*0.11)
        else if (ComboBoxMUHasil.Text='HKD-HONG KONG DOLLAR') then
            Hasil:=(x*1.12)
        else if (ComboBoxMUHasil.Text='JPY-JAPANESE YEN') then
            Hasil:=(x*19.0903)
        else if (ComboBoxMUHasil.Text='KRW-SOUTH KOREAN WON') then
            Hasil:=(x*181.981)
        else if (ComboBoxMUHasil.Text='KWD-KUWAITI DINAR') then
            Hasil:=(x*0.044)
        else if (ComboBoxMUHasil.Text='LAK-LAOTIAN KIP') then
            Hasil:=(x*2479.374)
        else if (ComboBoxMUHasil.Text='MYR-MALAYSIAN RINGGIT') then
            Hasil:=(x*0.635)
        else if (ComboBoxMUHasil.Text='CAD-CANADIAN DOLLAR') then
            Hasil:=(x*0.194)
        else if (ComboBoxMUHasil.Text='NZD-NEW ZEALAND DOLLAR') then
            Hasil:=(x*0.228)
        else if (ComboBoxMUHasil.Text='PGK-PAPUA NEW GUINEAN KINA') then
            Hasil:=(x*0.504)
        else if (ComboBoxMUHasil.Text='PHP-PHILIPPINE PESO')then
            Hasil:=(x*7.972)
        else if (ComboBoxMUHasil.Text='SAR-SAUDI RIYAL') then
            Hasil:=(x*0.54)
        else if (ComboBoxMUHasil.Text='SEK-SWEDISH KRONA') then
            Hasil:=(x*1.5)
        else if (ComboBoxMUHasil.Text='SGD-SINGAPORE DOLLAR') then
            Hasil:=(x*0.193)
        else if (ComboBoxMUHasil.Text='THB-THAI BAHT') then
            Hasil:=(x*4.974)
        else if (ComboBoxMUHasil.Text='USD-UNITED STATES DOLLAR') then
            Hasil:=(x*0.143)
        else if (ComboBoxMUHasil.Text='VND-VIETNAM DONG') then
            Hasil:=(x*3387.302);
    end;

  procedure KonvertDKK;
    begin
      if (ComboBoxMUHasil.Text='IDR-INDONESIAN RUPIAH') then
            Hasil:=(x*2240.279)
        else if (ComboBoxMUHasil.Text='AUD-AUSTRALIAN DOLLAR') then
            Hasil:=(x*0.212)
        else if (ComboBoxMUHasil.Text='BND-BRUNEI DOLLAR') then
            Hasil:=(x*0.192)
        else if (ComboBoxMUHasil.Text='NOK-NORWEGIAN KRONE') then
            Hasil:=(x*1.407)
        else if (ComboBoxMUHasil.Text='CHF-SWISS FRANC') then
            Hasil:=(x*0.13)
        else if (ComboBoxMUHasil.Text='CNH-CHINESE YUAN(OFFSHORE)') then
            Hasil:=(x*0.997)
        else if (ComboBoxMUHasil.Text='CNY-CHINESE YUAN') then
            Hasil:=(x*0.996)
        else if (ComboBoxMUHasil.Text='DKK-DANISH KRONE') then
            Hasil:=(x)
        else if (ComboBoxMUHasil.Text='GBP-BRITISH POUND STERLING') then
            Hasil:=(x*0.11)
        else if (ComboBoxMUHasil.Text='HKD-HONG KONG DOLLAR') then
            Hasil:=(x*1.117)
        else if (ComboBoxMUHasil.Text='JPY-JAPANESE YEN') then
            Hasil:=(x*19.02442)
        else if (ComboBoxMUHasil.Text='KRW-SOUTH KOREAN WON') then
            Hasil:=(x*181.34)
        else if (ComboBoxMUHasil.Text='KWD-KUWAITI DINAR') then
            Hasil:=(x*0.043)
        else if (ComboBoxMUHasil.Text='LAK-LAOTIAN KIP') then
            Hasil:=(x*2470.76)
        else if (ComboBoxMUHasil.Text='MYR-MALAYSIAN RINGGIT') then
            Hasil:=(x*0.632)
        else if (ComboBoxMUHasil.Text='CAD-CANADIAN DOLLAR') then
            Hasil:=(x*0.194)
        else if (ComboBoxMUHasil.Text='NZD-NEW ZEALAND DOLLAR') then
            Hasil:=(x*0.227)
        else if (ComboBoxMUHasil.Text='PGK-PAPUA NEW GUINEAN KINA') then
            Hasil:=(x*0.502)
        else if (ComboBoxMUHasil.Text='PHP-PHILIPPINE PESO') then
            Hasil:=(x*7.945)
        else if (ComboBoxMUHasil.Text='SAR-SAUDI RIYAL') then
            Hasil:=(x*0.538)
        else if (ComboBoxMUHasil.Text='SEK-SWEDISH KRONA') then
            Hasil:=(x*1.5)
        else if (ComboBoxMUHasil.Text='SGD-SINGAPORE DOLLAR') then
            Hasil:=(x*0.192)
        else if (ComboBoxMUHasil.Text='THB-THAI BAHT') then
            Hasil:=(x*4.956)
        else if (ComboBoxMUHasil.Text='USD-UNITED STATES DOLLAR') then
            Hasil:=(x*0.143)
        else if (ComboBoxMUHasil.Text='VND-VIETNAM DONG-VIETNAM DONG') then
            Hasil:=(x*3376.002);
      end;

  procedure KonvertGBP;
    begin
      if (ComboBoxMUHasil.Text='IDR-INDONESIAN RUPIAH') then
            Hasil:=(x*18922.32)
        else if (ComboBoxMUHasil.Text='AUD-AUSTRALIAN DOLLAR') then
            Hasil:=(x*1.792)
        else if (ComboBoxMUHasil.Text='BND-BRUNEI DOLLAR') then
            Hasil:=(x*1.627)
        else if (ComboBoxMUHasil.Text='NOK-NORWEGIAN KRONE') then
            Hasil:=(x*11.889)
        else if (ComboBoxMUHasil.Text='CHF-SWISS FRANC') then
            Hasil:=(x*1.125)
        else if (ComboBoxMUHasil.Text='CNH-CHINESE YUAN(OFFSHORE)') then
            Hasil:=(x*8.426)
        else if (ComboBoxMUHasil.Text='CNY-CHINESE YUAN') then
            Hasil:=(x*8.418)
        else if (ComboBoxMUHasil.Text='DKK-DANISH KRONE') then
            Hasil:=(x*8.44)
        else if (ComboBoxMUHasil.Text='GBP-BRITISH POUND STERLING') then
            Hasil:=(x)
        else if (ComboBoxMUHasil.Text='HKD-HONG KONG DOLLAR') then
            Hasil:=(x*9.435)
        else if (ComboBoxMUHasil.Text='JPY-JAPANESE YEN') then
            Hasil:=(x*160.72398)
        else if (ComboBoxMUHasil.Text='KRW-SOUTH KOREAN WON') then
            Hasil:=(x*1531.372)
        else if (ComboBoxMUHasil.Text='KWD-KUWAITI DINAR') then
            Hasil:=(x*0.37)
        else if (ComboBoxMUHasil.Text='LAK-LAOTIAN KIP') then
            Hasil:=(x*20872.038)
        else if (ComboBoxMUHasil.Text='MYR-MALAYSIAN RINGGIT') then
            Hasil:=(x*5.34)
        else if (ComboBoxMUHasil.Text='CAD-CANADIAN DOLLAR') then
            Hasil:=(x*1.63)
        else if (ComboBoxMUHasil.Text='NZD-NEW ZEALAND DOLLAR') then
            Hasil:=(x*1.92)
        else if (ComboBoxMUHasil.Text='PGK-PAPUA NEW GUINEAN KINA') then
            Hasil:=(x*4.246)
        else if (ComboBoxMUHasil.Text='PHP-PHILIPPINE PESO') then
            Hasil:=(x*67.081)
        else if (ComboBoxMUHasil.Text='SAR-SAUDI RIYAL') then
            Hasil:=(x*4.546)
        else if (ComboBoxMUHasil.Text='SEK-SWEDISH KRONA') then
            Hasil:=(x*12.666)
        else if (ComboBoxMUHasil.Text='SGD-SINGAPORE DOLLAR') then
            Hasil:=(x*1.62)
        else if (ComboBoxMUHasil.Text='THB-THAI BAHT') then
            Hasil:=(x*41.883)
        else if (ComboBoxMUHasil.Text='USD-UNITED STATES DOLLAR') then
            Hasil:=(x*1.209)
        else if (ComboBoxMUHasil.Text='VND-VIETNAM DONG') then
            Hasil:=(x*28525.141);
    end;

  procedure KonvertHKD;
    begin
        if (ComboBoxMUHasil.Text='IDR-INDONESIAN RUPIAH') then
            Hasil:=(x*2005.41)
        else if (ComboBoxMUHasil.Text='AUD-AUSTRALIAN DOLLAR') then
            Hasil:=(x*0.189)
        else if (ComboBoxMUHasil.Text='BND-BRUNEI DOLLAR') then
            Hasil:=(x*0.172)
        else if (ComboBoxMUHasil.Text='NOK-NORWEGIAN KRONE') then
            Hasil:=(x*1.259)
        else if (ComboBoxMUHasil.Text='CHF-SWISS FRANC') then
            Hasil:=(x*0.119)
        else if (ComboBoxMUHasil.Text='CNH-CHINESE YUAN(OFFSHORE)') then
            Hasil:=(x*0.892)
        else if (ComboBoxMUHasil.Text='CNY-CHINESE YUAN') then
            Hasil:=(x*0.892)
        else if (ComboBoxMUHasil.Text='DKK-DANISH KRONE') then
            Hasil:=(x*0.894)
        else if (ComboBoxMUHasil.Text='GBP-BRITISH POUND STERLING') then
            Hasil:=(x*0.105)
        else if (ComboBoxMUHasil.Text='HKD-HONG KONG DOLLAR') then
            Hasil:=(x)
        else if (ComboBoxMUHasil.Text='JPY-JAPANESE YEN') then
            Hasil:=(x*17.02792)
        else if (ComboBoxMUHasil.Text='KRW-SOUTH KOREAN WON') then
            Hasil:=(x*162.361)
        else if (ComboBoxMUHasil.Text='KWD-KUWAITI DINAR') then
            Hasil:=(x*0.039)
        else if (ComboBoxMUHasil.Text='LAK-LAOTIAN KIP') then
            Hasil:=(x*2212.03)
        else if (ComboBoxMUHasil.Text='MYR-MALAYSIAN RINGGIT') then
            Hasil:=(x*0.566)
        else if (ComboBoxMUHasil.Text='CAD-CANADIAN DOLLAR') then
            Hasil:=(x*0.173)
        else if (ComboBoxMUHasil.Text='NZD-NEW ZEALAND DOLLAR') then
            Hasil:=(x*0.203)
        else if (ComboBoxMUHasil.Text='PGK-PAPUA NEW GUINEAN KINA') then
            Hasil:=(x*0.45)
        else if (ComboBoxMUHasil.Text='PHP-PHILIPPINE PESO') then
            Hasil:=(x*7.11)
        else if (ComboBoxMUHasil.Text='SAR-SAUDI RIYAL') then
            Hasil:=(x*0.481)
        else if (ComboBoxMUHasil.Text='SEK-SWEDISH KRONA') then
            Hasil:=(x*1.341)
        else if (ComboBoxMUHasil.Text='SGD-SINGAPORE DOLLAR') then
            Hasil:=(x*0.17)
        else if (ComboBoxMUHasil.Text='THB-THAI BAHT') then
            Hasil:=(x*4.436)
        else if (ComboBoxMUHasil.Text='USD-UNITED STATES DOLLAR') then
            Hasil:=(x*0.128)
        else if (ComboBoxMUHasil.Text='VND-VIETNAM DONG') then
            Hasil:=(x*3022.065)
    end;
  procedure KonvertJPY;
    begin
        if (ComboBoxMUHasil.Text='IDR-INDONESIAN RUPIAH') then
            Hasil:=(x*117.778)
        else if (ComboBoxMUHasil.Text='AUD-AUSTRALIAN DOLLAR') then
            Hasil:=(x*0.011)
        else if (ComboBoxMUHasil.Text='BND-BRUNEI DOLLAR') then
            Hasil:=(x*0.01)
        else if (ComboBoxMUHasil.Text='NOK-NORWEGIAN KRONE') then
            Hasil:=(x*0.073)
        else if (ComboBoxMUHasil.Text='CHF-SWISS FRANC') then
            Hasil:=(x*0.007)
        else if (ComboBoxMUHasil.Text='CNH-CHINESE YUAN(OFFSHORE)') then
            Hasil:=(x*0.052)
        else if (ComboBoxMUHasil.Text='CNY-CHINESE YUAN') then
            Hasil:=(x*0.052)
        else if (ComboBoxMUHasil.Text='DKK-DANISH KRONE') then
            Hasil:=(x*0.052)
        else if (ComboBoxMUHasil.Text='GBP-BRITISH POUND STERLING') then
            Hasil:=(x*0.006)
        else if (ComboBoxMUHasil.Text='HKD-HONG KONG DOLLAR') then
            Hasil:=(x*0.058)
        else if (ComboBoxMUHasil.Text='JPY-JAPANESE YEN') then
            Hasil:=(x)
        else if (ComboBoxMUHasil.Text='KRW-SOUTH KOREAN WON') then
            Hasil:=(x*9.537)
        else if (ComboBoxMUHasil.Text='KWD-KUWAITI DINAR') then
            Hasil:=(x*0.002)
        else if (ComboBoxMUHasil.Text='LAK-LAOTIAN KIP') then
            Hasil:=(x*129.93)
        else if (ComboBoxMUHasil.Text='MYR-MALAYSIAN RINGGIT') then
            Hasil:=(x*0.033)
        else if (ComboBoxMUHasil.Text='CAD-CANADIAN DOLLAR') then
            Hasil:=(x*0.01)
        else if (ComboBoxMUHasil.Text='NZD-NEW ZEALAND DOLLAR') then
            Hasil:=(x*0.01)
        else if (ComboBoxMUHasil.Text='PGK-PAPUA NEW GUINEAN KINA') then
            Hasil:=(x*0.026)
        else if (ComboBoxMUHasil.Text='PHP-PHILIPPINE PESO') then
            Hasil:=(x*0.41)
        else if (ComboBoxMUHasil.Text='SAR-SAUDI RIYAL') then
            Hasil:=(x*0.028)
        else if (ComboBoxMUHasil.Text='SEK-SWEDISH KRONA') then
            Hasil:=(x*0.07)
        else if (ComboBoxMUHasil.Text='SGD-SINGAPORE DOLLAR') then
            Hasil:=(x*0.01)
        else if (ComboBoxMUHasil.Text='THB-THAI BAHT') then
            Hasil:=(x*0.026)
        else if (ComboBoxMUHasil.Text='USD-UNITED STATES DOLLAR') then
            Hasil:=(x*0.007)
        else if (ComboBoxMUHasil.Text='VND-VIETNAM DONG') then
            Hasil:=(x*177.54)
    end;

  procedure KonvertKRW;
    begin
      if (ComboBoxMUHasil.Text='IDR-INDONESIAN RUPIAH') then
            Hasil:=(x*12.35)
        else if (ComboBoxMUHasil.Text='AUD-AUSTRALIAN DOLLAR') then
            Hasil:=(x*0.001)
        else if (ComboBoxMUHasil.Text='BND-BRUNEI DOLLAR') then
            Hasil:=(x*0.001)
        else if (ComboBoxMUHasil.Text='NOK-NORWEGIAN KRONE') then
            Hasil:=(x*0.007)
        else if (ComboBoxMUHasil.Text='CHF-SWISS FRANC') then
            Hasil:=(x*0.007)
        else if (ComboBoxMUHasil.Text='CNH-CHINESE YUAN(OFFSHORE)') then
            Hasil:=(x*0.005)
        else if (ComboBoxMUHasil.Text='CNY-CHINESE YUAN') then
            Hasil:=(x*0.005)
        else if (ComboBoxMUHasil.Text='DKK-DANISH KRONE') then
            Hasil:=(x*0.005)
        else if (ComboBoxMUHasil.Text='GBP-BRITISH POUND STERLING') then
            Hasil:=(x*0.0006)
        else if (ComboBoxMUHasil.Text='HKD-HONG KONG DOLLAR') then
            Hasil:=(x*0.006)
        else if (ComboBoxMUHasil.Text='JPY-JAPANESE YEN') then
            Hasil:=(x*0.1462)
        else if (ComboBoxMUHasil.Text='KRW-SOUTH KOREAN WON') then
            Hasil:=(x)
        else if (ComboBoxMUHasil.Text='KWD-KUWAITI DINAR') then
            Hasil:=(x*0.002)
        else if (ComboBoxMUHasil.Text='LAK-LAOTIAN KIP') then
            Hasil:=(x*13.59)
        else if (ComboBoxMUHasil.Text='MYR-MALAYSIAN RINGGIT') then
            Hasil:=(x*0.003)
        else if (ComboBoxMUHasil.Text='CAD-CANADIAN DOLLAR') then
            Hasil:=(x*0.001)
        else if (ComboBoxMUHasil.Text='NZD-NEW ZEALAND DOLLAR') then
            Hasil:=(x*0.001)
        else if (ComboBoxMUHasil.Text='PGK-PAPUA NEW GUINEAN KINA') then
            Hasil:=(x*0.002)
        else if (ComboBoxMUHasil.Text='PHP-PHILIPPINE PESO') then
            Hasil:=(x*0.043)
        else if (ComboBoxMUHasil.Text='SAR-SAUDI RIYAL') then
            Hasil:=(x*0.002)
        else if (ComboBoxMUHasil.Text='SEK-SWEDISH KRONA') then
            Hasil:=(x*0.008)
        else if (ComboBoxMUHasil.Text='SGD-SINGAPORE DOLLAR') then
            Hasil:=(x*0.001)
        else if (ComboBoxMUHasil.Text='THB-THAI BAHT') then
            Hasil:=(x*0.027)
        else if (ComboBoxMUHasil.Text='USD-UNITED STATES DOLLAR') then
            Hasil:=(x*0.0007)
        else if (ComboBoxMUHasil.Text='VND-VIETNAM DONG') then
            Hasil:=(x*18.559)
    end;

  procedure KonvertKWD;
    begin
      if (ComboBoxMUHasil.Text='IDR-INDONESIAN RUPIAH') then
            Hasil:=(x*51056.721)
        else if (ComboBoxMUHasil.Text='AUD-AUSTRALIAN DOLLAR') then
            Hasil:=(x*4.829)
        else if (ComboBoxMUHasil.Text='BND-BRUNEI DOLLAR') then
            Hasil:=(x*4.391)
        else if (ComboBoxMUHasil.Text='NOK-NORWEGIAN KRONE') then
            Hasil:=(x*32.067)
        else if (ComboBoxMUHasil.Text='CHF-SWISS FRANC') then
            Hasil:=(x*3.306)
        else if (ComboBoxMUHasil.Text='CNH-CHINESE YUAN(OFFSHORE)') then
            Hasil:=(x*22.733)
        else if (ComboBoxMUHasil.Text='CNY-CHINESE YUAN') then
            Hasil:=(x*22.7)
        else if (ComboBoxMUHasil.Text='DKK-DANISH KRONE') then
            Hasil:=(x*22.778)
        else if (ComboBoxMUHasil.Text='GBP-BRITISH POUND STERLING') then
            Hasil:=(x*2.698)
        else if (ComboBoxMUHasil.Text='HKD-HONG KONG DOLLAR') then
            Hasil:=(x*25.457)
        else if (ComboBoxMUHasil.Text='JPY-JAPANESE YEN') then
            Hasil:=(x*433.29961)
        else if (ComboBoxMUHasil.Text='KRW-SOUTH KOREAN WON') then
            Hasil:=(x*4145.641)
        else if (ComboBoxMUHasil.Text='KWD-KUWAITI DINAR') then
            Hasil:=(x)
        else if (ComboBoxMUHasil.Text='LAK-LAOTIAN KIP') then
            Hasil:=(x*56317.87)
        else if (ComboBoxMUHasil.Text='MYR-MALAYSIAN RINGGIT') then
            Hasil:=(x*14.434)
        else if (ComboBoxMUHasil.Text='CAD-CANADIAN DOLLAR') then
            Hasil:=(x*4.4)
        else if (ComboBoxMUHasil.Text='NZD-NEW ZEALAND DOLLAR') then
            Hasil:=(x*5.179)
        else if (ComboBoxMUHasil.Text='PGK-PAPUA NEW GUINEAN KINA') then
            Hasil:=(x*11.458)
        else if (ComboBoxMUHasil.Text='PHP-PHILIPPINE PESO') then
            Hasil:=(x*181.183)
        else if (ComboBoxMUHasil.Text='SAR-SAUDI RIYAL') then
            Hasil:=(x*12.266)
        else if (ComboBoxMUHasil.Text='SEK-SWEDISH KRONA') then
            Hasil:=(x*34.157)
        else if (ComboBoxMUHasil.Text='SGD-SINGAPORE DOLLAR') then
            Hasil:=(x*4.389)
        else if (ComboBoxMUHasil.Text='THB-THAI BAHT') then
            Hasil:=(x*112.964)
        else if (ComboBoxMUHasil.Text='USD-UNITED STATES DOLLAR') then
            Hasil:=(x*3.263)
        else if (ComboBoxMUHasil.Text='VND-VIETNAM DONG') then
            Hasil:=(x*76941.035)
    end;

  procedure KonvertLAK;
    begin
        if (ComboBoxMUHasil.Text='IDR-INDONESIAN RUPIAH') then
            Hasil:=(x*0.906)
        else if (ComboBoxMUHasil.Text='AUD-AUSTRALIAN DOLLAR') then
            Hasil:=(x*0.000086)
        else if (ComboBoxMUHasil.Text='BND-BRUNEI DOLLAR') then
            Hasil:=(x*0.000078)
        else if (ComboBoxMUHasil.Text='NOK-NORWEGIAN KRONE') then
            Hasil:=(x*0.000569)
        else if (ComboBoxMUHasil.Text='CHF-SWISS FRANC') then
            Hasil:=(x*0.000054)
        else if (ComboBoxMUHasil.Text='CNH-CHINESE YUAN(OFFSHORE)') then
            Hasil:=(x*0.0004)
        else if (ComboBoxMUHasil.Text='CNY-CHINESE YUAN') then
            Hasil:=(x*0.0004)
        else if (ComboBoxMUHasil.Text='DKK-DANISH KRONE') then
            Hasil:=(x*0.0004)
        else if (ComboBoxMUHasil.Text='GBP-BRITISH POUND STERLING') then
            Hasil:=(x*0.000048)
        else if (ComboBoxMUHasil.Text='HKD-HONG KONG DOLLAR') then
            Hasil:=(x*0.000452)
        else if (ComboBoxMUHasil.Text='JPY-JAPANESE YEN') then
            Hasil:=(x*0.00769)
        else if (ComboBoxMUHasil.Text='KRW-SOUTH KOREAN WON') then
            Hasil:=(x*0.073)
        else if (ComboBoxMUHasil.Text='KWD-KUWAITI DINAR') then
            Hasil:=(x*0.000018)
        else if (ComboBoxMUHasil.Text='LAK-LAOTIAN KIP') then
            Hasil:=(x)
        else if (ComboBoxMUHasil.Text='MYR-MALAYSIAN RINGGIT') then
            Hasil:=(x*0.000256)
        else if (ComboBoxMUHasil.Text='CAD-CANADIAN DOLLAR') then
            Hasil:=(x*0.000079)
        else if (ComboBoxMUHasil.Text='NZD-NEW ZEALAND DOLLAR') then
            Hasil:=(x*0.000092)
        else if (ComboBoxMUHasil.Text='PGK-PAPUA NEW GUINEAN KINA') then
            Hasil:=(x*0.000203)
        else if (ComboBoxMUHasil.Text='PHP-PHILIPPINE PESO') then
            Hasil:=(x*0.003)
        else if (ComboBoxMUHasil.Text='SAR-SAUDI RIYAL') then
            Hasil:=(x*0.000218)
        else if (ComboBoxMUHasil.Text='SEK-SWEDISH KRONA') then
            Hasil:=(x*0.000606)
        else if (ComboBoxMUHasil.Text='SGD-SINGAPORE DOLLAR') then
            Hasil:=(x*0.000078)
        else if (ComboBoxMUHasil.Text='THB-THAI BAHT') then
            Hasil:=(x*0.002)
        else if (ComboBoxMUHasil.Text='USD-UNITED STATES DOLLAR') then
            Hasil:=(x*0.000058)
        else if (ComboBoxMUHasil.Text='VND-VIETNAM DONG') then
            Hasil:=(x*1.366)
    end;

  procedure KonvertMYR;
    begin
      if (ComboBoxMUHasil.Text='IDR-INDONESIAN RUPIAH') then
            Hasil:=(x*3538.26)
        else if (ComboBoxMUHasil.Text='AUD-AUSTRALIAN DOLLAR') then
            Hasil:=(x*0.334)
        else if (ComboBoxMUHasil.Text='BND-BRUNEI DOLLAR') then
            Hasil:=(x*0.304)
        else if (ComboBoxMUHasil.Text='NOK-NORWEGIAN KRONE') then
            Hasil:=(x*2.221)
        else if (ComboBoxMUHasil.Text='CHF-SWISS FRANCH') then
            Hasil:=(x*0.21)
        else if (ComboBoxMUHasil.Text='CNH-CHINESE YUAN(OFFSHORE)') then
            Hasil:=(x*1.574)
        else if (ComboBoxMUHasil.Text='CNY-CHINESE YUAN') then
            Hasil:=(x*1.572)
        else if (ComboBoxMUHasil.Text='DKK-DANISH KRONE') then
            Hasil:=(x*1.57)
        else if (ComboBoxMUHasil.Text='GBP-BRITISH POUND STERLING') then
            Hasil:=(x*0.18)
        else if (ComboBoxMUHasil.Text='HKD-HONG KONG DOLLAR') then
            Hasil:=(x*1.76)
        else if (ComboBoxMUHasil.Text='JPY-JAPANESE YEN') then
            Hasil:=(x*30.0278)
        else if (ComboBoxMUHasil.Text='KRW-SOUTH KOREAN WON') then
            Hasil:=(x*287.255)
        else if (ComboBoxMUHasil.Text='KWD-KUWAITI DINAR') then
            Hasil:=(x*0.069)
        else if (ComboBoxMUHasil.Text='LAK-LAOTIAN KIP') then
            Hasil:=(x*3901.524)
        else if (ComboBoxMUHasil.Text='MYR-MALAYSIAN RINGGIT') then
            Hasil:=(x)
        else if (ComboBoxMUHasil.Text='CAD-CANADIAN DOLLAR') then
            Hasil:=(x*0.3)
        else if (ComboBoxMUHasil.Text='NZD-NEW ZEALAND DOLLAR') then
            Hasil:=(x*0.358)
        else if (ComboBoxMUHasil.Text='PGK-PAPUA NEW GUINEAN KINA') then
            Hasil:=(x*0.793)
        else if (ComboBoxMUHasil.Text='PHP-PHILIPPINE PESO') then
            Hasil:=(x*12.574)
        else if (ComboBoxMUHasil.Text='SAR-SAUDI RIYAL') then
            Hasil:=(x*0.849)
        else if (ComboBoxMUHasil.Text='SEK-SWEDISH KRONA') then
            Hasil:=(x*2.365)
        else if (ComboBoxMUHasil.Text='SGD-SINGAPORE DOLLAR') then
            Hasil:=(x*0.304)
        else if (ComboBoxMUHasil.Text='THB-THAI BAHT') then
            Hasil:=(x*7.825)
        else if (ComboBoxMUHasil.Text='USD-UNITED STATES DOLLAR') then
            Hasil:=(x*0.226)
        else if (ComboBoxMUHasil.Text='VND-VIETNAM DONG') then
            Hasil:=(x*5330.232)
    end;

  procedure KonvertNOK;
    begin
    if (ComboBoxMUHasil.Text='IDR-INDONESIAN RUPIAH') then
			Hasil:=(x*1577.398)
		else if (ComboBoxMUHasil.Text='AUD-AUSTRALIAN DOLLAR') then
			Hasil:=(x*0.150)
		else if (ComboBoxMUHasil.Text='BND-BRUNEI DOLLAR') then
			Hasil:=(x*0.136)
		else if (ComboBoxMUHasil.Text='CAD-CANADIAN DOLLAR') then
			Hasil:=(x*0.138)
		else if (ComboBoxMUHasil.Text='CHF-SWISS FRANCH') then
			Hasil:=(x*0.094)
		else if (ComboBoxMUHasil.Text='CNH-CHINESE YUAN(OFFSHORE)') then
			Hasil:=(x*0.708)
		else if (ComboBoxMUHasil.Text='CNY-CHINESE YUAN') then
			Hasil:=(x*0.707)
		else if (ComboBoxMUHasil.Text='DKK-DANISH KRONE') then
			Hasil:=(x*0.708)
		else if (ComboBoxMUHasil.Text='GBP-BRITISH POUND STERLING') then
			Hasil:=(x*0.083)
		else if (ComboBoxMUHasil.Text='HKD-HONG KONG DOLLAR') then
			Hasil:=(x*0.789)
		else if (ComboBoxMUHasil.Text='JPY-JAPANESE YEN') then
			Hasil:=(x*13.43041)
		else if (ComboBoxMUHasil.Text='KRW-SOUTH KOREAN WON') then
			Hasil:=(x*129.508)
		else if (ComboBoxMUHasil.Text='KWD-KUWAITI DINAR') then
			Hasil:=(x*0.031)
		else if (ComboBoxMUHasil.Text='LAK-LAOTIAN KIP') then
			Hasil:=(x*1754.102)
		else if (ComboBoxMUHasil.Text='MYR-MALAYSIAN RINGGIT') then
			Hasil:=(x*0.44)
		else if (ComboBoxMUHasil.Text='NOK-NORWEGIAN KRONE') then
			Hasil:=(x)
		else if (ComboBoxMUHasil.Text='NZD-NEW ZEALAND DOLLAR') then
			Hasil:=(x*0.160)
		else if (ComboBoxMUHasil.Text='PGK-PAPUA NEW GUINEAN KINA') then
			Hasil:=(x*0.356)
		else if (ComboBoxMUHasil.Text='PHP-PHILIPPINE PESO') then
			Hasil:=(x*5.586)
		else if (ComboBoxMUHasil.Text='SAR-SAUDI RIYAL') then
			Hasil:=(x*0.380)
		else if (ComboBoxMUHasil.Text='SEK-SWEDISH KRONA') then
			Hasil:=(x*1.06)
		else if (ComboBoxMUHasil.Text='SGD-SINGAPORE DOLLAR') then
			Hasil:=(x*0.136)
		else if (ComboBoxMUHasil.Text='THB-THAI BAHT') then
			Hasil:=(x*3.515)
		else if (ComboBoxMUHasil.Text='USD-UNITED STATES DOLLAR') then
			Hasil:=(x*0.101)
		else if (ComboBoxMUHasil.Text='VND-VIETNAM DONG') then
			Hasil:=(x*2392.4);
    end;

  procedure KonvertNZD;
    begin
    if (ComboBoxMUHasil.Text='IDR-INDONESIAN RUPIAH') then
			Hasil:=(x*9817.48)
		else if (ComboBoxMUHasil.Text='AUD-AUSTRALIAN DOLLAR') then
			Hasil:=(x*0.936)
		else if (ComboBoxMUHasil.Text='BND-BRUNEI DOLLAR') then
			Hasil:=(x*0.850)
		else if (ComboBoxMUHasil.Text='CAD-CANADIAN DOLLAR') then
			Hasil:=(x*0.859)
		else if (ComboBoxMUHasil.Text='CHF-SWISS FRANC') then
			Hasil:=(x*0.587)
		else if (ComboBoxMUHasil.Text='CNH-CHINESE YUAN(OFFSHORE)') then
			Hasil:=(x*4.408)
		else if (ComboBoxMUHasil.Text='CNY-CHINESE YUAN') then
			Hasil:=(x*4.400)
		else if (ComboBoxMUHasil.Text='DKK-DANISH KRONE') then
			Hasil:=(x*4.411)
		else if (ComboBoxMUHasil.Text='GBP-BRITISH POUND STERLING') then
			Hasil:=(x*0.522)
		else if (ComboBoxMUHasil.Text='HKD-HONG KONG DOLLAR') then
			Hasil:=(x*4.914)
		else if (ComboBoxMUHasil.Text='JPY-JAPANESE YEN') then
			Hasil:=(x*83.5888)
		else if (ComboBoxMUHasil.Text='KRW-SOUTH KOREAN WON') then
			Hasil:=(x*806.041)
		else if (ComboBoxMUHasil.Text='KWD-KUWAITI DINAR') then
			Hasil:=(x*0.192)
		else if (ComboBoxMUHasil.Text='LAK-LAOTIAN KIP') then
			Hasil:=(x*10917.261)
		else if (ComboBoxMUHasil.Text='MYR-MALAYSIAN RINGGIT') then
			Hasil:=(x*2.78)
		else if (ComboBoxMUHasil.Text='NOK-NORWEGIAN KRONE') then
			Hasil:=(x*6.223)
		else if (ComboBoxMUHasil.Text='NZD-NEW ZEALAND DOLLAR') then
			Hasil:=(x)
		else if (ComboBoxMUHasil.Text='PGK-PAPUA NEW GUINEAN KINA') then
			Hasil:=(x*2.216)
		else if (ComboBoxMUHasil.Text='PHP-PHILIPPINE PESO') then
			Hasil:=(x*34.769)
		else if (ComboBoxMUHasil.Text='SAR-SAUDI RIYAL') then
			Hasil:=(x*2.367)
		else if (ComboBoxMUHasil.Text='SEK-SWEDISH KRONA') then
			Hasil:=(x*6.631)
		else if (ComboBoxMUHasil.Text='SGD-SINGAPORE DOLLAR') then
			Hasil:=(x*0.850)
		else if (ComboBoxMUHasil.Text='THB-THAI BAHT') then
			Hasil:=(x*21.881)
		else if (ComboBoxMUHasil.Text='USD-UNITED STATES DOLLAR') then
			Hasil:=(x*0.6)
		else if (ComboBoxMUHasil.Text='VND-VIETNAM DONG-VIETNAM DONG') then
			Hasil:=(x*14890.036)
    end;

  procedure KonvertPGK;
    begin
    if (ComboBoxMUHasil.Text='IDR-INDONESIAN RUPIAH') then
			Hasil:=(x*4429.89)
		else if (ComboBoxMUHasil.Text='AUD-AUSTRALIAN DOLLAR') then
			Hasil:=(x*0.422)
		else if (ComboBoxMUHasil.Text='BND-BRUNEI DOLLAR') then
			Hasil:=(x*0.383)
		else if (ComboBoxMUHasil.Text='CAD-CANADIAN DOLLAR') then
			Hasil:=(x*0.387)
		else if (ComboBoxMUHasil.Text='CHF-SWISS FRANC') then
			Hasil:=(x*0.265)
		else if (ComboBoxMUHasil.Text='CNH-CHINESE YUAN(OFFSHORE)') then
			Hasil:=(x*1.989)
		else if (ComboBoxMUHasil.Text='CNY-CHINESE YUAN') then
			Hasil:=(x*1.98)
		else if (ComboBoxMUHasil.Text='DKK-DANISH KRONE') then
			Hasil:=(x*1.990)
		else if (ComboBoxMUHasil.Text='GBP-BRITISH POUND STERLING') then
			Hasil:=(x*0.235)
		else if (ComboBoxMUHasil.Text='HKD-HONG KONG DOLLAR') then
			Hasil:=(x*2.217)
		else if (ComboBoxMUHasil.Text='JPY-JAPANESE YEN') then
			Hasil:=(x*37.7173)
		else if (ComboBoxMUHasil.Text='KRW-SOUTH KOREAN WON') then
			Hasil:=(x*363.705)
		else if (ComboBoxMUHasil.Text='KWD-KUWAITI DINAR') then
			Hasil:=(x*0.087)
		else if (ComboBoxMUHasil.Text='LAK-LAOTIAN KIP') then
			Hasil:=(x*4926.136)
		else if (ComboBoxMUHasil.Text='MYR-MALAYSIAN RINGGIT') then
			Hasil:=(x*1.257)
		else if (ComboBoxMUHasil.Text='NOK-NORWEGIAN KRONE') then
			Hasil:=(x*2.808)
		else if (ComboBoxMUHasil.Text='NZD-NEW ZEALAND DOLLAR') then
			Hasil:=(x*0.451)
		else if (ComboBoxMUHasil.Text='PGK-PAPUA NEW GUINEAN KINA') then
			Hasil:=(x)
		else if (ComboBoxMUHasil.Text='PHP-PHILIPPINE PESO') then
			Hasil:=(x*15.688)
		else if (ComboBoxMUHasil.Text='SAR-SAUDI RIYAL') then
			Hasil:=(x*1.068)
		else if (ComboBoxMUHasil.Text='SEK-SWEDISH KRONA') then
			Hasil:=(x*2.992)
		else if (ComboBoxMUHasil.Text='SGD-SINGAPORE DOLLAR') then
			Hasil:=(x*0.38)
		else if (ComboBoxMUHasil.Text='THB-THAI BAHT') then
			Hasil:=(x*9.873)
		else if (ComboBoxMUHasil.Text='USD-UNITED STATES DOLLAR') then
			Hasil:=(x*0.284)
		else if (ComboBoxMUHasil.Text='VND-VIETNAM DONG-VIETNAM DONG') then
			Hasil:=(x*6718)
    end;

  procedure KonvertPHP;
    begin
      if (ComboBoxMUHasil.Text='IDR-INDONESIAN RUPIAH') then
			Hasil:=(x*282.357)
		else if (ComboBoxMUHasil.Text='AUD-AUSTRALIAN DOLLAR') then
			Hasil:=(x*0.026)
		else if (ComboBoxMUHasil.Text='BND-BRUNEI DOLLAR') then
			Hasil:=(x*0.024)
		else if (ComboBoxMUHasil.Text='CAD-CANADIAN DOLLAR') then
			Hasil:=(x*0.024)
		else if (ComboBoxMUHasil.Text='CHF-SWISS FRANC') then
			Hasil:=(x*0.016)
		else if (ComboBoxMUHasil.Text='CNH-CHINESE YUAN(OFFSHORE)') then
			Hasil:=(x*0.126)
		else if (ComboBoxMUHasil.Text='CNY-CHINESE YUAN') then
			Hasil:=(x*0.126)
		else if (ComboBoxMUHasil.Text='DKK-DANISH KRONE') then
			Hasil:=(x*0.126)
		else if (ComboBoxMUHasil.Text='GBP-BRITISH POUND STERLING') then
			Hasil:=(x*0.015)
		else if (ComboBoxMUHasil.Text='HKD-HONG KONG DOLLAR') then
			Hasil:=(x*0.141)
		else if (ComboBoxMUHasil.Text='JPY-JAPANESE YEN') then
			Hasil:=(x*2.4040)
		else if (ComboBoxMUHasil.Text='KRW-SOUTH KOREAN WON') then
			Hasil:=(x*23.182)
		else if (ComboBoxMUHasil.Text='KWD-KUWAITI DINAR') then
			Hasil:=(x*0.005)
		else if (ComboBoxMUHasil.Text='LAK-LAOTIAN KIP') then
			Hasil:=(x*313.988)
		else if (ComboBoxMUHasil.Text='MYR-MALAYSIAN RINGGIT') then
			Hasil:=(x*0.080)
		else if (ComboBoxMUHasil.Text='NOK-NORWEGIAN KRONE') then
			Hasil:=(x*0.179)
		else if (ComboBoxMUHasil.Text='NZD-NEW ZEALAND DOLLAR') then
			Hasil:=(x*0.028)
		else if (ComboBoxMUHasil.Text='PGK-PAPUA NEW GUINEAN KINA') then
			Hasil:=(x*0.063)
		else if (ComboBoxMUHasil.Text='PHP-PHILIPPINE PESO') then
			Hasil:=(x)
		else if (ComboBoxMUHasil.Text='SAR-SAUDI RIYAL') then
			Hasil:=(x*0.068)
		else if (ComboBoxMUHasil.Text='SEK-SWEDISH KRONA') then
			Hasil:=(x*0.190)
		else if (ComboBoxMUHasil.Text='SGD-SINGAPORE DOLLAR') then
			Hasil:=(x*0.024)
		else if (ComboBoxMUHasil.Text='THB-THAI BAHT') then
			Hasil:=(x*0.629)
		else if (ComboBoxMUHasil.Text='USD-UNITED STATES DOLLAR') then
			Hasil:=(x*0.018)
		else if (ComboBoxMUHasil.Text='VND-VIETNAM DONG') then
			Hasil:=(x*428.24);
    end;

  procedure KonvertSAR;
    begin
       if (ComboBoxMUHasil.Text='IDR-INDONESIAN RUPIAH') then
			Hasil:=(x*4146.398)
		else if (ComboBoxMUHasil.Text='AUD-AUSTRALIAN DOLLAR') then
			Hasil:=(x*0.395)
		else if (ComboBoxMUHasil.Text='BND-BRUNEI DOLLAR') then
			Hasil:=(x*0.35)
		else if (ComboBoxMUHasil.Text='CAD-CANADIAN DOLLAR') then
			Hasil:=(x*0.362)
		else if (ComboBoxMUHasil.Text='CHF-SWISS FRANC') then
			Hasil:=(x*0.248)
		else if (ComboBoxMUHasil.Text='CNH-CHINESE YUAN(OFFSHORE)') then
			Hasil:=(x*1.861)
		else if (ComboBoxMUHasil.Text='CNY-CHINESE YUAN') then
			Hasil:=(x*1.858)
		else if (ComboBoxMUHasil.Text='DKK-DANISH KRONE') then
			Hasil:=(x*1.86)
		else if (ComboBoxMUHasil.Text='GBP-BRITISH POUND STERLING') then
			Hasil:=(x*0.220)
		else if (ComboBoxMUHasil.Text='HKD-HONG KONG DOLLAR') then
			Hasil:=(x*2.075)
		else if (ComboBoxMUHasil.Text='JPY-JAPANESE YEN') then
			Hasil:=(x*35.3035)
		else if (ComboBoxMUHasil.Text='KRW-SOUTH KOREAN WON') then
			Hasil:=(x*340.43)
		else if (ComboBoxMUHasil.Text='KWD-KUWAITI DINAR') then
			Hasil:=(x*0.081)
		else if (ComboBoxMUHasil.Text='LAK-LAOTIAN KIP') then
			Hasil:=(x*4610.885)
		else if (ComboBoxMUHasil.Text='MYR-MALAYSIAN RINGGIT') then
			Hasil:=(x*1.176)
		else if (ComboBoxMUHasil.Text='NOK-NORWEGIAN KRONE') then
			Hasil:=(x*2.62)
		else if (ComboBoxMUHasil.Text='NZD-NEW ZEALAND DOLLAR') then
			Hasil:=(x*0.422)
		else if (ComboBoxMUHasil.Text='PGK-PAPUA NEW GUINEAN KINA') then
			Hasil:=(x*0.936)
		else if (ComboBoxMUHasil.Text='PHP-PHILIPPINE PESO') then
			Hasil:=(x*14.6)
		else if (ComboBoxMUHasil.Text='SAR-SAUDI RIYAL') then
			Hasil:=(x)
		else if (ComboBoxMUHasil.Text='SEK-SWEDISH KRONA') then
			Hasil:=(x*2.800)
		else if (ComboBoxMUHasil.Text='SGD-SINGAPORE DOLLAR') then
			Hasil:=(x*0.359)
		else if (ComboBoxMUHasil.Text='THB-THAI BAHT') then
			Hasil:=(x*9.241)
		else if (ComboBoxMUHasil.Text='USD-UNITED STATES DOLLAR') then
			Hasil:=(x*0.26)
		else if (ComboBoxMUHasil.Text='VND-VIETNAM DONG') then
			Hasil:=(x*6288.7)
    end;

  procedure KonvertSEK;
    begin
      if (ComboBoxMUHasil.Text='IDR-INDONESIAN RUPIAH') then
			Hasil:=(x*1480.54)
		else if (ComboBoxMUHasil.Text='AUD-AUSTRALIAN DOLLAR') then
			Hasil:=(x*0.141)
		else if (ComboBoxMUHasil.Text='BND-BRUNEI DOLLAR') then
			Hasil:=(x*0.128)
		else if (ComboBoxMUHasil.Text='CAD-CANADIAN DOLLAR') then
			Hasil:=(x*0.129)
		else if (ComboBoxMUHasil.Text='CHF-SWISS FRANC') then
			Hasil:=(x*0.088)
		else if (ComboBoxMUHasil.Text='CNH-CHINESE YUAN(OFFSHORE)') then
			Hasil:=(x*0.664)
		else if (ComboBoxMUHasil.Text='CNY-CHINESE YUAN') then
			Hasil:=(x*0.663)
		else if (ComboBoxMUHasil.Text='DKK-DANISH KRONE') then
			Hasil:=(x*0.665)
		else if (ComboBoxMUHasil.Text='GBP-BRITISH POUND STERLING') then
			Hasil:=(x*0.078)
		else if (ComboBoxMUHasil.Text='HKD-HONG KONG DOLLAR') then
			Hasil:=(x*0.741)
		else if (ComboBoxMUHasil.Text='JPY-JAPANESE YEN') then
			Hasil:=(x*12.6057)
		else if (ComboBoxMUHasil.Text='KRW-SOUTH KOREAN WON') then
			Hasil:=(x*121.556)
		else if (ComboBoxMUHasil.Text='KWD-KUWAITI DINAR') then
			Hasil:=(x*0.029)
		else if (ComboBoxMUHasil.Text='LAK-LAOTIAN KIP') then
			Hasil:=(x*1646.395)
		else if (ComboBoxMUHasil.Text='MYR-MALAYSIAN RINGGIT') then
			Hasil:=(x*0.420)
		else if (ComboBoxMUHasil.Text='NOK-NORWEGIAN KRONE') then
			Hasil:=(x*0.938)
		else if (ComboBoxMUHasil.Text='NZD-NEW ZEALAND DOLLAR') then
			Hasil:=(x*0.150)
		else if (ComboBoxMUHasil.Text='PGK-PAPUA NEW GUINEAN KINA') then
			Hasil:=(x*0.334)
		else if (ComboBoxMUHasil.Text='PHP-PHILIPPINE PESO') then
			Hasil:=(x*5.243)
		else if (ComboBoxMUHasil.Text='SAR-SAUDI RIYAL') then
			Hasil:=(x*0.357)
		else if (ComboBoxMUHasil.Text='SEK-SWEDISH KRONA') then
			Hasil:=(x)
		else if (ComboBoxMUHasil.Text='SGD-SINGAPORE DOLLAR') then
			Hasil:=(x*0.128)
		else if (ComboBoxMUHasil.Text='THB-THAI BAHT') then
			Hasil:=(x*0.329)
		else if (ComboBoxMUHasil.Text='USD-UNITED STATES DOLLAR') then
			Hasil:=(x*0.094)
		else if (ComboBoxMUHasil.Text='VND-VIETNAM DONG') then
			Hasil:=(x*2245.516);
    end;

  procedure KonvertSGD;
    begin
      if (ComboBoxMUHasil.Text='IDR-INDONESIAN RUPIAH') then
			Hasil:=(x*11538.566)
		else if (ComboBoxMUHasil.Text='AUD-AUSTRALIAN DOLLAR') then
			Hasil:=(x*1.101)
		else if (ComboBoxMUHasil.Text='BND-BRUNEI DOLLAR') then
			Hasil:=(x*0.999)
		else if (ComboBoxMUHasil.Text='CAD-CANADIAN DOLLAR') then
			Hasil:=(x*1.009)
		else if (ComboBoxMUHasil.Text='CHF-SWISS FRANC') then
			Hasil:=(x*0.690)
		else if (ComboBoxMUHasil.Text='CNH-CHINESE YUAN(OFFSHORE)') then
			Hasil:=(x*5.181)
		else if (ComboBoxMUHasil.Text='CNY-CHINESE YUAN') then
			Hasil:=(x*5.172)
		else if (ComboBoxMUHasil.Text='DKK-DANISH KRONE') then
			Hasil:=(x*5.185)
		else if (ComboBoxMUHasil.Text='GBP-BRITISH POUND STERLING') then
			Hasil:=(x*0.613)
		else if (ComboBoxMUHasil.Text='HKD-HONG KONG DOLLAR') then
			Hasil:=(x*5.776)
		else if (ComboBoxMUHasil.Text='JPY-JAPANESE YEN') then
			Hasil:=(x*98.2425)
		else if (ComboBoxMUHasil.Text='KRW-SOUTH KOREAN WON') then
			Hasil:=(x*947.34)
		else if (ComboBoxMUHasil.Text='KWD-KUWAITI DINAR') then
			Hasil:=(x*0.226)
		else if (ComboBoxMUHasil.Text='LAK-LAOTIAN KIP') then
			Hasil:=(x*12831.137)
		else if (ComboBoxMUHasil.Text='MYR-MALAYSIAN RINGGIT') then
			Hasil:=(x*3.274)
		else if (ComboBoxMUHasil.Text='NOK-NORWEGIAN KRONE') then
			Hasil:=(x*7.314)
		else if (ComboBoxMUHasil.Text='NZD-NEW ZEALAND DOLLAR') then
			Hasil:=(x*1.175)
		else if (ComboBoxMUHasil.Text='PGK-PAPUA NEW GUINEAN KINA') then
			Hasil:=(x*2.604)
		else if (ComboBoxMUHasil.Text='PHP-PHILIPPINE PESO') then
			Hasil:=(x*40.865)
		else if (ComboBoxMUHasil.Text='SAR-SAUDI RIYAL') then
			Hasil:=(x*2.782)
		else if (ComboBoxMUHasil.Text='SEK-SWEDISH KRONA') then
			Hasil:=(x*7.793)
		else if (ComboBoxMUHasil.Text='SGD-SINGAPORE DOLLAR') then
			Hasil:=(x)
		else if (ComboBoxMUHasil.Text='THB-THAI BAHT')then
			Hasil:=(x*25.717)
		else if (ComboBoxMUHasil.Text='USD-UNITED STATES DOLLAR') then
			Hasil:=(x*0.739)
		else if (ComboBoxMUHasil.Text='VND-VIETNAM DONG') then
			Hasil:=(x*17500.369)
    end;

  procedure KonvertTHB;
    begin
      if (ComboBoxMUHasil.Text='IDR-INDONESIAN RUPIAH') then
			Hasil:=(x*448.665)
		else if (ComboBoxMUHasil.Text='AUD-AUSTRALIAN DOLLAR') then
			Hasil:=(x*0.042)
		else if (ComboBoxMUHasil.Text='BND-BRUNEI DOLLAR') then
			Hasil:=(x*0.038)
		else if (ComboBoxMUHasil.Text='CAD-CANADIAN DOLLAR') then
			Hasil:=(x*0.039)
		else if (ComboBoxMUHasil.Text='CHF-SWISS FRANC') then
			Hasil:=(x*0.026)
		else if (ComboBoxMUHasil.Text='CNH-CHINESE YUAN(OFFSHORE)') then
			Hasil:=(x*0.201)
		else if (ComboBoxMUHasil.Text='CNY-CHINESE YUAN') then
			Hasil:=(x*0.201)
		else if (ComboBoxMUHasil.Text='DKK-DANISH KRONE') then
			Hasil:=(x*0.201)
		else if (ComboBoxMUHasil.Text='GBP-BRITISH POUND STERLING') then
			Hasil:=(x*0.023)
		else if (ComboBoxMUHasil.Text='HKD-HONG KONG DOLLAR') then
			Hasil:=(x*0.22)
		else if (ComboBoxMUHasil.Text='JPY-JAPANESE YEN') then
			Hasil:=(x*3.82006)
		else if (ComboBoxMUHasil.Text='KRW-SOUTH KOREAN WON') then
			Hasil:=(x*36.836)
		else if (ComboBoxMUHasil.Text='KWD-KUWAITI DINAR') then
			Hasil:=(x*0.008)
		else if (ComboBoxMUHasil.Text='LAK-LAOTIAN KIP') then
			Hasil:=(x*498.925)
		else if (ComboBoxMUHasil.Text='MYR-MALAYSIAN RINGGIT') then
			Hasil:=(x*0.127)
		else if (ComboBoxMUHasil.Text='NOK-NORWEGIAN KRONE') then
			Hasil:=(x*0.284)
		else if (ComboBoxMUHasil.Text='NZD-NEW ZEALAND DOLLAR') then
			Hasil:=(x*0.045)
		else if (ComboBoxMUHasil.Text='PGK-PAPUA NEW GUINEAN KINA') then
			Hasil:=(x*0.101)
		else if (ComboBoxMUHasil.Text='PHP-PHILIPPINE PESO') then
			Hasil:=(x*1.588)
		else if (ComboBoxMUHasil.Text='SAR-SAUDI RIYAL') then
			Hasil:=(x*0.108)
		else if (ComboBoxMUHasil.Text='SEK-SWEDISH KRONA') then
			Hasil:=(x*0.303)
		else if (ComboBoxMUHasil.Text='SGD-SINGAPORE DOLLAR') then
			Hasil:=(x*0.038)
		else if (ComboBoxMUHasil.Text='THB-THAI BAHT') then
			Hasil:=(x)
		else if (ComboBoxMUHasil.Text='USD-UNITED STATES DOLLAR') then
			Hasil:=(x*0.028)
		else if (ComboBoxMUHasil.Text='VND-VIETNAM DONG') then
			Hasil:=(x*680.48)
    end;

  procedure KonvertUSD;
    begin
      if (ComboBoxMUHasil.Text='IDR-INDONESIAN RUPIAH') then
			Hasil:=(x*15593.219)
		else if (ComboBoxMUHasil.Text='AUD-AUSTRALIAN DOLLAR') then
			Hasil:=(x*1.4)
		else if (ComboBoxMUHasil.Text='BND-BRUNEI DOLLAR') then
			Hasil:=(x*1.350)
		else if (ComboBoxMUHasil.Text='CAD-CANADIAN DOLLAR') then
			Hasil:=(x*1.36)
		else if (ComboBoxMUHasil.Text='CHF-SWISS FRANC') then
			Hasil:=(x*0.933)
		else if (ComboBoxMUHasil.Text='CNH-CHINESE YUAN(OFFSHORE)') then
			Hasil:=(x*7)
		else if (ComboBoxMUHasil.Text='CNY-CHINESE YUAN') then
			Hasil:=(x*6.9)
		else if (ComboBoxMUHasil.Text='DKK-DANISH KRONE') then
			Hasil:=(x*7)
		else if (ComboBoxMUHasil.Text='GBP-BRITISH POUND STERLING') then
			Hasil:=(x*0.829)
		else if (ComboBoxMUHasil.Text='HKD-HONG KONG DOLLAR') then
			Hasil:=(x*7.80)
		else if (ComboBoxMUHasil.Text='JPY-JAPANESE YEN') then
			Hasil:=(x*132.76501)
		else if (ComboBoxMUHasil.Text='KRW-SOUTH KOREAN WON') then
			Hasil:=(x*1280.244)
		else if (ComboBoxMUHasil.Text='KWD-KUWAITI DINAR') then
			Hasil:=(x*0.30)
		else if (ComboBoxMUHasil.Text='LAK-LAOTIAN KIP') then
			Hasil:=(x*17340)
		else if (ComboBoxMUHasil.Text='MYR-MALAYSIAN RINGGIT') then
			Hasil:=(x*4)
		else if (ComboBoxMUHasil.Text='NOK-NORWEGIAN KRONE') then
			Hasil:=(x*9.8)
		else if (ComboBoxMUHasil.Text='NZD-NEW ZEALAND DOLLAR') then
			Hasil:=(x*1.58)
		else if (ComboBoxMUHasil.Text='PGK-PAPUA NEW GUINEAN KINA') then
			Hasil:=(x*3.52)
		else if (ComboBoxMUHasil.Text='PHP-PHILIPPINE PESO') then
			Hasil:=(x*55.225)
		else if (ComboBoxMUHasil.Text='SAR-SAUDI RIYAL') then
			Hasil:=(x*3.760)
		else if (ComboBoxMUHasil.Text='SEK-SWEDISH KRONA') then
			Hasil:=(x*10.5)
		else if (ComboBoxMUHasil.Text='SGD-SINGAPORE DOLLAR') then
			Hasil:=(x*1.3)
		else if (ComboBoxMUHasil.Text='THB-THAI BAHT') then
			Hasil:=(x*34.754)
		else if (ComboBoxMUHasil.Text='USD-UNITED STATES DOLLAR') then
			Hasil:=(x)
		else if (ComboBoxMUHasil.Text='VND-VIETNAM DONG') then
			Hasil:=(x*23650)
    end;

  procedure KonvertVND;
    begin
      if (ComboBoxMUHasil.Text='IDR-INDONESIAN RUPIAH') then
			Hasil:=(x*0.659)
		else if (ComboBoxMUHasil.Text='AUD-AUSTRALIAN DOLLAR') then
			Hasil:=(x*0.000063)
		else if (ComboBoxMUHasil.Text='BND-BRUNEI DOLLAR') then
			Hasil:=(x*0.000057)
		else if (ComboBoxMUHasil.Text='CAD-CANADIAN DOLLAR') then
			Hasil:=(x*0.000058)
		else if (ComboBoxMUHasil.Text='CHF-SWISS FRANC') then
			Hasil:=(x*0.000039)
		else if (ComboBoxMUHasil.Text='CNH-CHINESE YUAN(OFFSHORE)') then
			Hasil:=(x*0.000296)
		else if (ComboBoxMUHasil.Text='CNY-CHINESE YUAN') then
			Hasil:=(x*0.000296)
		else if (ComboBoxMUHasil.Text='DKK-DANISH KRONE') then
			Hasil:=(x*0.000296)
		else if (ComboBoxMUHasil.Text='GBP-BRITISH POUND STERLING') then
			Hasil:=(x*0.000035)
		else if (ComboBoxMUHasil.Text='HKD-HONG KONG DOLLAR') then
			Hasil:=(x*0.00033)
		else if (ComboBoxMUHasil.Text='JPY-JAPANESE YEN') then
			Hasil:=(x*0.00561374)
		else if (ComboBoxMUHasil.Text='KRW-SOUTH KOREAN WON') then
			Hasil:=(x*0.054133)
		else if (ComboBoxMUHasil.Text='KWD-KUWAITI DINAR') then
			Hasil:=(x*0.000013)
		else if (ComboBoxMUHasil.Text='LAK-LAOTIAN KIP') then
			Hasil:=(x*0.733)
		else if (ComboBoxMUHasil.Text='MYR-MALAYSIAN RINGGIT') then
			Hasil:=(x*0.000187)
		else if (ComboBoxMUHasil.Text='NOK-NORWEGIAN KRONE') then
			Hasil:=(x*0.000418)
		else if (ComboBoxMUHasil.Text='NZD-NEW ZEALAND DOLLAR') then
			Hasil:=(x*0.000067)
		else if (ComboBoxMUHasil.Text='PGK-PAPUA NEW GUINEAN KINA') then
			Hasil:=(x*0.000149)
		else if (ComboBoxMUHasil.Text='PHP-PHILIPPINE PESO') then
			Hasil:=(x*0.002)
		else if (ComboBoxMUHasil.Text='SAR-SAUDI RIYAL') then
			Hasil:=(x*0.000159)
		else if (ComboBoxMUHasil.Text='SEK-SWEDISH KRONA') then
			Hasil:=(x*0.000445)
		else if (ComboBoxMUHasil.Text='SGD-SINGAPORE DOLLAR') then
			Hasil:=(x*0.000057)
		else if (ComboBoxMUHasil.Text='THB-THAI BAHT') then
			Hasil:=(x*0.00147)
		else if (ComboBoxMUHasil.Text='USD-UNITED STATES DOLLAR') then
			Hasil:=(x*0.000042)
		else if (ComboBoxMUHasil.Text='VND-VIETNAM DONG') then
			Hasil:=(x)
    end;

  procedure KonvertMataUang;
    begin
      if ComboBoxMUAsal.Text='IDR-INDONESIAN RUPIAH' then
        KonvertIDR
      else if ComboBoxMUAsal.Text='AUD-AUSTRALIAN DOLLAR' then
        KonvertAUD
      else if ComboBoxMUAsal.Text='BND-BRUNEI DOLLAR'then
        KonvertBND
      else if ComboBoxMUAsal.Text='CAD-CANADIAN DOLLAR' then
        KonvertCAD
      else if ComboBoxMUAsal.Text='CHF-SWISS FRANC' then
        KonvertCHF
      else if ComboBoxMuAsal.Text='CNH-CHINESE YUAN(OFFSHORE)'then
        KonvertCNH
      else if ComboBoxMuAsal.Text='CNY-CHINESE YUAN'then
        KonvertCNY
      else if ComboBoxMuAsal.Text='DKK-DANISH KRONE'then
        KonvertDKK
      else if ComboBoxMuAsal.Text='GBP-BRITISH POUND STERLING'then
        KonvertGBP
      else if ComboBoxMuAsal.Text='HKD-HONG KONG DOLLAR'then
        KonvertHKD
      else if ComboBoxMuAsal.Text='JPY-JAPANESE YEN'then
        KonvertJPY
      else if ComboBoxMuAsal.Text='KRW-SOUTH KOREAN WON'then
        KonvertKRW
      else if ComboBoxMuAsal.Text='KWD-KUWAITI DINAR'then
        KonvertKWD
      else if ComboBoxMuAsal.Text='LAK-LAOTIAN KIP'then
        KonvertLAK
      else if ComboBoxMuAsal.Text='MYR-MALAYSIAN RINGGIT'then
        KonvertMYR
      else if ComboBoxMuAsal.Text='NOK-NORWEGIAN KRONE'then
        KonvertNOK
      else if ComboBoxMuAsal.Text='NZD-NEW ZEALAND DOLLAR'then
        KonvertNZD
      else if ComboBoxMuAsal.Text='PGK-PAPUA NEW GUINEAN KINA'then
        KonvertPGK
      else if ComboBoxMuAsal.Text='PHP-PHILIPPINE PESO'then
        KonvertPHP
      else if ComboBoxMuAsal.Text='SAR-SAUDI RIYAL'then
        KonvertSAR
      else if ComboBoxMuAsal.Text='SEK-SWEDISH KRONA'then
        KonvertSEK
      else if ComboBoxMuAsal.Text='SGD-SINGAPORE DOLLAR'then
        KonvertSGD
      else if ComboBoxMuAsal.Text='THB-THAI BAHT'then
        KonvertTHB
      else if ComboBoxMuAsal.Text='USD-UNITED STATES DOLLAR'then
        KonvertUSD
      else
        KonvertVND;
      EditMUHasil.Text:=FloatToStr(Hasil);
    end;

begin
   x:=StrToFloat(EditMUAsal.Text);
   KonvertMataUang;
end;
procedure TFormKonverterSatuan.BitBtnBackTampilanUtamaClick(
  Sender: TObject);
begin
 FormMenuUtama.Show;
  FormKonverterSatuan.Hide;
end;

end.
