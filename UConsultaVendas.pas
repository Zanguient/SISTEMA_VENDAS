unit UConsultaVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UModeloConsulta, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids;

type
  TFormConsultaVendas = class(TFormModeloConsulta)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsultaVendas: TFormConsultaVendas;

implementation

{$R *.dfm}

uses DM;

end.
