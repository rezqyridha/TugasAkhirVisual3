program ProjectKomite;

uses
  Forms,
  Unit1 in 'Unit1.pas' {frmLogin},
  Unit2 in 'Unit2.pas' {frmSiswa},
  Unit3 in 'Unit3.pas' {frmAdm},
  Unit4 in 'Unit4.pas' {frmUser},
  Unit5 in 'Unit5.pas' {frmDaftar},
  Unit6 in 'Unit6.pas' {frmkelas},
  Unit7 in 'Unit7.pas' {frmthnajaran},
  Unit8 in 'Unit8.pas' {frmpengeluaran},
  Unit9 in 'Unit9.pas' {frmpembayaran};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tfrmpengeluaran, frmpengeluaran);
  Application.CreateForm(Tfrmpembayaran, frmpembayaran);
  Application.CreateForm(Tfrmthnajaran, frmthnajaran);
  Application.CreateForm(Tfrmkelas, frmkelas);
  Application.CreateForm(TfrmSiswa, frmSiswa);
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TfrmAdm, frmAdm);
  Application.CreateForm(TfrmUser, frmUser);
  Application.CreateForm(TfrmDaftar, frmDaftar);
  Application.Run;
end.
