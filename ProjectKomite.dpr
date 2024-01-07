program ProjectKomite;

uses
  Forms,
  Unit1 in 'Unit1.pas' {frmLogin},
  Unit2 in 'Unit2.pas' {frmSiswa},
  Unit3 in 'Unit3.pas' {frmAdm},
  Unit4 in 'Unit4.pas' {frmUser},
  Unit5 in 'Unit5.pas' {frmDaftar};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TfrmSiswa, frmSiswa);
  Application.CreateForm(TfrmAdm, frmAdm);
  Application.CreateForm(TfrmUser, frmUser);
  Application.CreateForm(TfrmDaftar, frmDaftar);
  Application.Run;
end.
