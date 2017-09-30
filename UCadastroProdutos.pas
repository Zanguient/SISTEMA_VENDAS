unit UCadastroProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UModeloCadastro, Data.DB, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TFormCadastroProdutos = class(TFormModeloCadastro)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBComboBox1: TDBComboBox;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroProdutos: TFormCadastroProdutos;

implementation

{$R *.dfm}

uses DM, UPrincipal, UConsultaProdutos;

procedure TFormCadastroProdutos.Button1Click(Sender: TObject);
begin
  inherited;
  FormPrincipal.abreForm(TFormConsultaProdutos);
end;

end.
