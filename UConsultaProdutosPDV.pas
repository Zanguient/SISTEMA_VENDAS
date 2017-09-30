unit UConsultaProdutosPDV;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UModeloConsulta, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids;

type
  TFormConsultaProdutosPDV = class(TFormModeloConsulta)
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsultaProdutosPDV: TFormConsultaProdutosPDV;

implementation

{$R *.dfm}

uses DM, UPrincipal, UVenda;

procedure TFormConsultaProdutosPDV.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  FormPrincipal.abreForm(TFormVenda);
end;

end.
