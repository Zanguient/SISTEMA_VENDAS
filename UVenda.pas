unit UVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Data.DB, Datasnap.DBClient, Vcl.Grids, Vcl.DBGrids;

type
  TFormVenda = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    gbVenda: TGroupBox;
    gbVendaItens: TGroupBox;
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
    DataSourceVendas: TDataSource;
    btIniciarVenda: TButton;
    DBGrid1: TDBGrid;
    DataSourceVendasItens: TDataSource;
    DataSourceProdutos: TDataSource;
    Label6: TLabel;
    dbEditProduto: TDBEdit;
    Label7: TLabel;
    dbEditDescricao: TDBEdit;
    Label9: TLabel;
    dbEditPrecoVenda: TDBEdit;
    btSalvarVenda: TButton;
    btPesquisaProdutos: TButton;
    lookupVendedor: TDBLookupComboBox;
    lookupFormaPagamento: TDBLookupComboBox;
    lookupCliente: TDBLookupComboBox;
    DataSourceVendedor: TDataSource;
    DataSourceCliente: TDataSource;
    DataSourceFormaPagamento: TDataSource;
    btAdicionarProduto: TButton;
    lbQuantidade: TLabel;
    lbDesconto: TLabel;
    mseditQuantidade: TMaskEdit;
    mseditDesconto: TMaskEdit;
    btFinalizar: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btIniciarVendaClick(Sender: TObject);
    procedure btSalvarVendaClick(Sender: TObject);
    procedure btPesquisaProdutosClick(Sender: TObject);
    procedure btAdicionarProdutoClick(Sender: TObject);
    procedure btFinalizarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVenda: TFormVenda;
  VENDAS_IDENTITY: string;//Integer;

implementation

{$R *.dfm}

uses DM, UPrincipal, UConsultaProdutosPDV;

procedure TFormVenda.btAdicionarProdutoClick(Sender: TObject);
begin
//Abre VENDAS_ITENS
  DataModule1.ClientDataSetVendaItens.Open;
  DataModule1.ClientDataSetVendaItens.Insert;

//  DataModule1.ClientDataSetVendaItens.Insert;
  DataModule1.ClientDataSetVendaItensPRODUTO.Value  := DataModule1.ClientDataSetProdutosPRODUTO.Value;
  DataModule1.ClientDataSetVendaItensQUANTIDADE.Value  := mseditQuantidade.Text;
  DataModule1.ClientDataSetVendaItensVALOR_UNITARIO.Value  := DataModule1.ClientDataSetProdutosPRECO_VENDA.Value;
  DataModule1.ClientDataSetVendaItensCUSTO.Value := DataModule1.ClientDataSetProdutosPRECO_CUSTO.Value;  //retirar

  DataModule1.ClientDataSetVendaItensVALOR_TOTAL_BRUTO.Value  :=
   DataModule1.ClientDataSetProdutosPRECO_VENDA.Value * mseditQuantidade.Text; //PREÇO * QUANTIDADE

  DataModule1.ClientDataSetVendaItensDESCONTO.Value  := mseditDesconto.text;

  DataModule1.ClientDataSetVendaItensVALOR_TOTAL_LIQUIDO.Value  :=
   (DataModule1.ClientDataSetProdutosPRECO_VENDA.Value * mseditQuantidade.Text)- mseditDesconto.text;


DataModule1.ClientDataSetVendaItens.Post;
btFinalizar.Enabled := true;
end;

procedure TFormVenda.btFinalizarClick(Sender: TObject);
begin
 DataModule1.ClientDataSetVendaItens.ApplyUpdates(0);

 btPesquisaProdutos.Enabled := false;
 btAdicionarProduto.Enabled := false;

  btIniciarVenda.Enabled := true;
  btFinalizar.Enabled := false;
end;

procedure TFormVenda.btIniciarVendaClick(Sender: TObject);
begin

 TClientDataSet(DataSourceVendas.DataSet).Open;
 TClientDataSet(DataSourceVendas.DataSet).Insert;

  //abre lookups
  TClientDataSet(DataSourceVendedor.DataSet).Close;
  TClientDataSet(DataSourceCliente.DataSet).Close;
  TClientDataSet(DataSourceFormaPagamento.DataSet).Close;

  TClientDataSet(DataSourceVendedor.DataSet).Open;
  TClientDataSet(DataSourceCliente.DataSet).Open;
  TClientDataSet(DataSourceFormaPagamento.DataSet).Open;

   btIniciarVenda.Enabled := false;
   btPesquisaProdutos.Enabled := false;
   btAdicionarProduto.Enabled := false;
   btSalvarVenda.Enabled := true;
end;

procedure TFormVenda.btPesquisaProdutosClick(Sender: TObject);
begin
  FormPrincipal.abreForm(TFormConsultaProdutosPDV);
end;

procedure TFormVenda.btSalvarVendaClick(Sender: TObject);
begin

TClientDataSet(DataSourceVendas.DataSet).ApplyUpdates(0);
TClientDataSet(DataSourceVendas.DataSet).Refresh;
TClientDataSet(DataSourceVendas.DataSet).Last;

   btSalvarVenda.Enabled := false;
   btPesquisaProdutos.Enabled := true;
   btAdicionarProduto.Enabled := true;
end;

procedure TFormVenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 TClientDataSet(DataSourceVendas.DataSet).Close;
 TClientDataSet(DataSourceVendasItens.DataSet).Close;

  Action := caFree;
  Self := nil;
end;

procedure TFormVenda.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_ESCAPE then begin //se a tecla ESC for pressionada o formulario é fechado
    Self.Close;
  end;
end;

end.
