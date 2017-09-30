unit UConsultaProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UModeloConsulta, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids;

type
  TFormConsultaProdutos = class(TFormModeloConsulta)
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsultaProdutos: TFormConsultaProdutos;

implementation

{$R *.dfm}

uses DM, UCadastroProdutos, UPrincipal;

procedure TFormConsultaProdutos.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  FormPrincipal.abreForm(TFormCadastroProdutos);
end;

end.
