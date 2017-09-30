unit UConsultaClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UModeloConsulta, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids;

type
  TFormConsultaClientes = class(TFormModeloConsulta)
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsultaClientes: TFormConsultaClientes;

implementation

{$R *.dfm}

uses DM, UPrincipal, UCadastroClientes;

procedure TFormConsultaClientes.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  FormPrincipal.abreForm(TFormCadastroClientes);
end;

end.
