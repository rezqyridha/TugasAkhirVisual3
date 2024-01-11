unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, StdCtrls, Grids, DBGrids;

type
  Tfrmthnajaran = class(TForm)
    l1: TLabel;
    l3: TLabel;
    l4: TLabel;
    dbgrd1: TDBGrid;
    b1: TButton;
    b2: TButton;
    b3: TButton;
    b4: TButton;
    b5: TButton;
    b6: TButton;
    e_1: TEdit;
    e_2: TEdit;
    e_3: TEdit;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    zqry2: TZQuery;
    procedure posisiawal;
    procedure bersih;
    procedure b1Click(Sender: TObject);
    procedure b2Click(Sender: TObject);
    procedure b3Click(Sender: TObject);
    procedure b4Click(Sender: TObject);
    procedure b5Click(Sender: TObject);
    procedure b6Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmthnajaran: Tfrmthnajaran;
  id : string;

implementation

{$R *.dfm}

procedure Tfrmthnajaran.b1Click(Sender: TObject);
begin
b1.Enabled:= False;
b2.Enabled:= True;
b3.Enabled:= False;
b4.Enabled:= False;
b5.Enabled:= True;
b6.Enabled:= True;
e_1.Enabled:= True;
e_2.Enabled:= True;
e_3.Enabled:= True;
end;

procedure Tfrmthnajaran.b2Click(Sender: TObject);
begin
if e_1.Text='' then
  begin
    ShowMessage('ID TAHUN AJARAN BELUM DIISI DENGAN BENAR');
    end else
    if e_2.Text=''then
    begin
     ShowMessage('NAMA TAHUN AJARAN BELUM DIISI DENGAN BENAR');
    end else
    if e_3.text=''then
    begin
     ShowMessage('SEMESTER BELUM DIISI DENGAN BENAR');
    end else

  if frmthnajaran.zqry1.Locate('id_tahun_ajaran',e_1.Text,[]) then
  begin
   ShowMessage('DATA SUDAH ADA DALAM SISTEM');
  end else
  begin

 zqry1.SQL.Clear;
zqry1.SQL.Add('insert into tahun_ajaran values("'+e_1.Text+'","'+e_2.Text+'","'+e_3.Text+'")');
 zqry1.ExecSQL ;

 zqry1.SQL.Clear;
 zqry1.SQL.Add('select * from tahun_ajaran');
 zqry1.Open;
ShowMessage('DATA BERHASIL DISIMPAN!');
end;
end;

procedure Tfrmthnajaran.b3Click(Sender: TObject);
begin
if (e_1.Text= '')or (e_2.Text ='')or(e_3.Text= '') then
begin
  ShowMessage('INPUTAN WAJIB DIISI!');
end else
if e_1.Text = zqry1.Fields[1].AsString then
begin
 ShowMessage('DATA TIDAK ADA PERUBAHAN');
end else
begin
 ShowMessage('DATA BERHASIL DIUPDATE!');
zqry1.SQL.Clear;
zqry1.SQL.Add('Update tahun_ajaran set nama_tahun_ajaran="'+e_2.Text+'",semester="'+e_3.Text+'" where id_tahun_ajaran="'+id+'"');
zqry1. ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tahun_ajaran');
zqry1.Open;

end;
end;

procedure Tfrmthnajaran.b4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from tahun_ajaran where id_tahun_ajaran="'+id+'"');
zqry1. ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tahun_ajaran');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
 ShowMessage('DATA BATAL DIHAPUS');

end
end;

procedure Tfrmthnajaran.b5Click(Sender: TObject);
begin
posisiawal;
end;

procedure Tfrmthnajaran.b6Click(Sender: TObject);
begin
frxReport1.ShowReport();
end;

procedure Tfrmthnajaran.dbgrd1CellClick(Column: TColumn);
begin
id:= zqry1.Fields[0].AsString;
e_2.Text:= zqry1.Fields[1].AsString;
e_3.Text:= zqry1.Fields[2].AsString;


e_1.Enabled:= True;
e_2.Enabled:= True;
e_3.Enabled:= True;



b1.Enabled:= false;
b2.Enabled:= False;
b3.Enabled:= True;
b4.Enabled:= True;
b5.Enabled:= True;

end;

procedure Tfrmthnajaran.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure Tfrmthnajaran.posisiawal;
begin
bersih;
b1.Enabled:= True;
b2.Enabled:= False;
b3.Enabled:= False;
b4.Enabled:= False;
b5.Enabled:= False;
b6.Enabled:= False;
e_1.Enabled:= false;
e_2.Enabled:= false;
e_3.Enabled:= false;
end;

procedure Tfrmthnajaran.bersih;
begin
e_1.Clear;
e_2.Clear;
e_3.Clear;
end;


end.
