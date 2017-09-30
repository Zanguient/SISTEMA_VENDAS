program SistemaVenda;

uses
  Vcl.Forms,
  UPrincipal in 'UPrincipal.pas' {FormPrincipal},
  UModeloCadastro in 'UModeloCadastro.pas' {FormModeloCadastro},
  DM in 'DM.pas' {DataModule1: TDataModule},
  UCadastroClientes in 'UCadastroClientes.pas' {FormCadastroClientes},
  Vcl.Themes,
  Vcl.Styles,
  UModeloConsulta in 'UModeloConsulta.pas' {FormModeloConsulta},
  UConsultaClientes in 'UConsultaClientes.pas' {FormConsultaClientes},
  UCadastroProdutos in 'UCadastroProdutos.pas' {FormCadastroProdutos},
  UConsultaProdutos in 'UConsultaProdutos.pas' {FormConsultaProdutos},
  UVenda in 'UVenda.pas' {FormVenda},
  UConsultaProdutosPDV in 'UConsultaProdutosPDV.pas' {FormConsultaProdutosPDV},
  UConsultaVendas in 'UConsultaVendas.pas' {FormConsultaVendas};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Emerald Light Slate');
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
