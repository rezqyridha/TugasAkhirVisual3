unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, jpeg, ExtCtrls, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection;

type
  TfrmLogin = class(TForm)
    edtuser: TEdit;
    edtpass: TEdit;
    btnMasuk: TBitBtn;
    btnDaftar: TBitBtn;
    Label1: TLabel;
    lbl1: TLabel;
    lbl2: TLabel;
    con1: TZConnection;
    zqry1: TZQuery;
    chk1: TCheckBox;
    btnKeluar: TButton;
    procedure btnMasukClick(Sender: TObject);
    procedure btnDaftarClick(Sender: TObject);
    procedure chk1Click(Sender: TObject);
    procedure btnKeluarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;
  username:string;
  password:string;
  level:string;

implementation

uses
  Unit5, Unit3, Unit4;

{$R *.dfm}

procedure TfrmLogin.btnMasukClick(Sender: TObject);
begin
begin
 username := edtuser.Text;
 password := edtpass.Text;

  zqry1 := TZQuery.Create(nil);
  try
    zqry1.Connection := con1;
    zqry1.SQL.Text := 'SELECT level FROM user WHERE username = :username AND password = :password';
    zqry1.ParamByName('username').AsString := username;
    zqry1.ParamByName('password').AsString := password;
    zqry1.Open;

    if not zqry1.IsEmpty then
    begin
      level := zqry1.FieldByName('level').AsString;
      if level = 'admin' then
      begin
        // Pengguna berhasil login sebagai admin
        ShowMessage('Login admin berhasil');
        frmAdm.Show;
      end else
      if level = 'user' then
      begin
        // Pengguna berhasil login sebagai user
        ShowMessage('Login user berhasil!');
        frmUser.Show;
      end else
    end
    else
    begin
      // Informasi login tidak valid
      ShowMessage('username atau password salah');
    end;
  finally
    zqry1.Free;
  end;
end;
end;

procedure TfrmLogin.btnDaftarClick(Sender: TObject);
begin
frmDaftar.Show;
end;

procedure TfrmLogin.chk1Click(Sender: TObject);
begin
if chk1.Checked then
edtpass.PasswordChar := #0 else
edtpass.PasswordChar := '*'
end;

procedure TfrmLogin.btnKeluarClick(Sender: TObject);
begin
if MessageDlg('APAKAH ANDA YAKIN INGIN KELUAR?',mtWarning,[mbYes,mbNo],0)= mryes then
   begin
       Application.Terminate;
   end;
end;

end.
