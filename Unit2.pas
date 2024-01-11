unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, Buttons,
  frxClass, frxDBSet;

type
  TfrmSiswa = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    Label1: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    edtnis: TEdit;
    edtnm: TEdit;
    edtkls: TEdit;
    edtalamat: TEdit;
    cbbjk: TComboBox;
    btnS: TBitBtn;
    btnE: TBitBtn;
    btnH: TBitBtn;
    btnB: TBitBtn;
    btnbtl: TBitBtn;
    btnlprn: TBitBtn;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    dbgrd1: TDBGrid;
    zqry2: TZQuery;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    Label2: TLabel;
    edtid: TEdit;
    procedure posisiawal;
    procedure bersih;
    procedure btnBClick(Sender: TObject);
    procedure btnSClick(Sender: TObject);
    procedure btnEClick(Sender: TObject);
    procedure btnHClick(Sender: TObject);
    procedure btnbtlClick(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btnlprnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSiswa: TfrmSiswa;
  id_siswa : string;

implementation

{$R *.dfm}



procedure TfrmSiswa.btnBClick(Sender: TObject);
begin
btnB.Enabled:= False;
btnS.Enabled:= True;
btnE.Enabled:= False;
btnH.Enabled:= False;
btnbtl.Enabled:= True;
btnlprn.Enabled:= True;
edtid.Enabled:= True;
edtnis.Enabled:= True;
edtnm.Enabled:= True;
edtkls.Enabled:= True;
cbbjk.Enabled:= True;
edtalamat.Enabled:= True;

end;

procedure TfrmSiswa.btnSClick(Sender: TObject);
begin
if edtid.Text='' then
  begin
    ShowMessage('ID BELUM DIISI DENGAN BENAR');
    end else
    if edtnis.Text=''then
    begin
     ShowMessage('NIS BELUM DIISI DENGAN BENAR');
    end else
    if edtnm.Text=''then
    begin
     ShowMessage('NAMA SISWA BELUM DIISI DENGAN BENAR');
    end else
    if edtkls.text=''then
    begin
     ShowMessage('KELAS BELUM DIISI DENGAN BENAR');
    end else
    if cbbjk.text=''then
    begin
    ShowMessage('JENIS KELAMIN BELUM SESUAI');
    end else
    if edtalamat.text=''then
    begin
     ShowMessage('ALAMAT BELUM SESUAI');

  end else
  if frmSiswa.zqry1.Locate('id_siswa',edtid.Text,[]) then
  begin
   ShowMessage('DATA SUDAH ADA DALAM SISTEM');
  end else
  begin

 zqry1.SQL.Clear;
zqry1.SQL.Add('insert into siswa values("'+edtid.Text+'","'+edtnis.Text+'","'+edtnm.Text+'","'+edtkls.Text+'","'+cbbjk.Text+'","'+edtalamat.Text+'")');
 zqry1.ExecSQL ;

 zqry1.SQL.Clear;
 zqry1.SQL.Add('select * from siswa');
 zqry1.Open;
ShowMessage('DATA BERHASIL DISIMPAN!');
end;
end;

procedure TfrmSiswa.btnEClick(Sender: TObject);
begin
if (edtid.Text= '')or(edtnis.Text= '')or (edtnm.Text ='')or(edtkls.Text= '')or (cbbjk.Text ='')or(edtalamat.Text ='') then
begin
  ShowMessage('INPUTAN WAJIB DIISI!');
end else
if edtid.Text = zqry1.Fields[1].AsString then
begin
 ShowMessage('DATA TIDAK ADA PERUBAHAN');
end else
begin
 ShowMessage('DATA BERHASIL DIUPDATE!');
zqry1.SQL.Clear;
zqry1.SQL.Add('Update siswa set nis="'+edtnis.Text+'",nama_siswa="'+edtnm.Text+'",kelas="'+edtkls.Text+'",jenis_kelamin="'+cbbjk.Text+'",alamat="'+edtalamat.Text+'" where id_siswa="'+id_siswa+'"');
zqry1. ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from siswa');
zqry1.Open;

end;

end;

procedure TfrmSiswa.btnHClick(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from siswa where id_siswa="'+id_siswa+'"');
zqry1. ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from siswa');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
 ShowMessage('DATA BATAL DIHAPUS');

end
end;

procedure TfrmSiswa.btnbtlClick(Sender: TObject);
begin
posisiawal;
end;

procedure TfrmSiswa.dbgrd1CellClick(Column: TColumn);
begin
id_siswa:= zqry1.Fields[0].AsString;
edtnis.Text:= zqry1.Fields[1].AsString;
edtnm.Text:= zqry1.Fields[2].AsString;
edtkls.Text:= zqry1.Fields[3].AsString;
cbbjk.Text:= zqry1.Fields[4].AsString;
edtalamat.Text:= zqry1.Fields[5].AsString;

edtid.Enabled:= True;
edtnis.Enabled:= True;
edtnm.Enabled:= True;
edtkls.Enabled:= True;
cbbjk.Enabled:= True;
edtalamat.Enabled:= True;

btnB.Enabled:= false;
btnS.Enabled:= False;
btnE.Enabled:= True;
btnH.Enabled:= True;
btnbtl.Enabled:= True;
btnlprn.Enabled:= True;

end;

procedure TfrmSiswa.btnlprnClick(Sender: TObject);
begin
frxReport1.ShowReport();
end;


procedure TfrmSiswa.posisiawal;
begin
bersih;
btnB.Enabled:= True;
btnS.Enabled:= False;
btnE.Enabled:= False;
btnH.Enabled:= False;
btnbtl.Enabled:= False;
btnlprn.Enabled:= False;
edtid.Enabled:= false;
edtnis.Enabled:= false;
edtnm.Enabled:= false;
edtkls.Enabled:= false;
cbbjk.Enabled:= false;
edtalamat.Enabled:= false;
end;

procedure TfrmSiswa.bersih;
begin
edtid.Clear;
edtnis.Clear;
edtnm.Clear;
edtkls.Clear;
cbbjk.Clear;
edtalamat.Clear;
end;

procedure TfrmSiswa.FormShow(Sender: TObject);
begin
posisiawal;
end;





end.
