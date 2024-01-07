unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Buttons;

type
  TfrmDaftar = class(TForm)
    Label1: TLabel;
    lbl1: TLabel;
    lbl2: TLabel;
    edtuser: TEdit;
    edtpass: TEdit;
    btnMasuk: TBitBtn;
    btnDaftar: TBitBtn;
    con1: TZConnection;
    zqry1: TZQuery;
    Label2: TLabel;
    edtlvl: TEdit;
    procedure btnDaftarClick(Sender: TObject);
    procedure btnMasukClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDaftar: TfrmDaftar;

implementation

uses
  Unit1;

{$R *.dfm}


procedure TfrmDaftar.btnMasukClick(Sender: TObject);
begin
  if edtuser.Text='' then
  begin
    ShowMessage('USERNAME BELUM DIISI');
    end else
    if edtpass.Text='' then
    begin
      ShowMessage('PASSWORD BELUM DIISI');
    end else
  begin
    zqry1.SQL.Clear;
    zqry1.SQL.Add('insert into user values(null,"'+edtuser.Text+'","'+edtpass.Text+'","'
    +edtlvl.Text+'")');
    zqry1.ExecSQL ;

    zqry1.SQL.Clear;
    zqry1.SQL.Add('select * from user');
    zqry1.Open;
    ShowMessage('DATA BARHASIL DISIMPAN!');
  end;
  
end;

procedure TfrmDaftar.btnDaftarClick(Sender: TObject);
begin
  frmLogin.Show;
end;

end.
