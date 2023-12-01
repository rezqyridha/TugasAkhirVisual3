unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, jpeg, ExtCtrls;

type
  TFormLogin = class(TForm)
    edtuser: TEdit;
    edtpass: TEdit;
    btnlgn: TBitBtn;
    btndftr: TBitBtn;
    Label1: TLabel;
    lbl1: TLabel;
    lbl2: TLabel;
    img1: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLogin: TFormLogin;

implementation

{$R *.dfm}

end.
