unit DM;

interface

uses
  System.SysUtils, System.Classes, Data.DBXMSSQL, Data.DB, Data.SqlExpr,
  Data.FMTBcd, Datasnap.DBClient, Datasnap.Provider, Inifiles, Dialogs;

type
  TDataModule1 = class(TDataModule)
    SQLDataSetClientes: TSQLDataSet;
    DataSetProviderClientes: TDataSetProvider;
    ClientDataSetClientes: TClientDataSet;
    SQLDataSetProdutos: TSQLDataSet;
    DataSetProviderProdutos: TDataSetProvider;
    ClientDataSetProdutos: TClientDataSet;
    SQLDataSetProdutosPRODUTO: TFMTBCDField;
    SQLDataSetProdutosDESCRICAO: TStringField;
    SQLDataSetProdutosMARCA: TFMTBCDField;
    SQLDataSetProdutosPRECO_CUSTO: TFMTBCDField;
    SQLDataSetProdutosPRECO_VENDA: TFMTBCDField;
    SQLDataSetProdutosATIVO: TStringField;
    ClientDataSetProdutosPRODUTO: TFMTBCDField;
    ClientDataSetProdutosDESCRICAO: TStringField;
    ClientDataSetProdutosMARCA: TFMTBCDField;
    ClientDataSetProdutosPRECO_CUSTO: TFMTBCDField;
    ClientDataSetProdutosPRECO_VENDA: TFMTBCDField;
    ClientDataSetProdutosATIVO: TStringField;
    SQLConnection1: TSQLConnection;
    SQLConnection2: TSQLConnection;
    DSmasterDetail_VENDAS_VENDASITENS: TDataSource;
    DataSourceVendas: TDataSource;
    DataSourceVendas_Itens: TDataSource;
    SQLDataSetVendas: TSQLDataSet;
    SQLDataSetVendasItens: TSQLDataSet;
    DataSetProviderVendas: TDataSetProvider;
    ClientDataSetVendas: TClientDataSet;
    ClientDataSetVendaItens: TClientDataSet;
    SQLDataSetVendasVENDA: TFMTBCDField;
    SQLDataSetVendasDATA_HORA: TSQLTimeStampField;
    SQLDataSetVendasCLIENTE: TFMTBCDField;
    SQLDataSetVendasVENDEDOR: TFMTBCDField;
    SQLDataSetVendasFORMA_PAGAMENTO: TFMTBCDField;
    DataSetProviderVendedores: TDataSetProvider;
    ClientDataSetVendedores: TClientDataSet;
    SQLDataSetVendedores: TSQLDataSet;
    SQLDataSetVendedoresVENDEDOR: TFMTBCDField;
    SQLDataSetVendedoresNOME: TStringField;
    ClientDataSetVendedoresVENDEDOR: TFMTBCDField;
    ClientDataSetVendedoresNOME: TStringField;
    SQLDataSetClientesCLIENTE: TFMTBCDField;
    SQLDataSetClientesNOME: TStringField;
    SQLDataSetClientesDATA_NASCIMENTO: TDateField;
    SQLDataSetClientesCPF: TStringField;
    SQLDataSetClientesDDD: TFMTBCDField;
    SQLDataSetClientesTELEFONE: TFMTBCDField;
    SQLDataSetClientesEMAIL: TStringField;
    SQLDataSetClientesUF: TStringField;
    SQLDataSetClientesCIDADE: TStringField;
    SQLDataSetClientesBAIRRO: TStringField;
    SQLDataSetClientesRUA: TStringField;
    SQLDataSetClientesCOMPLEMENTO: TStringField;
    SQLDataSetClientesNUMERO: TFMTBCDField;
    ClientDataSetClientesCLIENTE: TFMTBCDField;
    ClientDataSetClientesNOME: TStringField;
    ClientDataSetClientesDATA_NASCIMENTO: TDateField;
    ClientDataSetClientesCPF: TStringField;
    ClientDataSetClientesDDD: TFMTBCDField;
    ClientDataSetClientesTELEFONE: TFMTBCDField;
    ClientDataSetClientesEMAIL: TStringField;
    ClientDataSetClientesUF: TStringField;
    ClientDataSetClientesCIDADE: TStringField;
    ClientDataSetClientesBAIRRO: TStringField;
    ClientDataSetClientesRUA: TStringField;
    ClientDataSetClientesCOMPLEMENTO: TStringField;
    ClientDataSetClientesNUMERO: TFMTBCDField;
    ClientDataSetVendasVENDA: TFMTBCDField;
    ClientDataSetVendasDATA_HORA: TSQLTimeStampField;
    ClientDataSetVendasCLIENTE: TFMTBCDField;
    ClientDataSetVendasVENDEDOR: TFMTBCDField;
    ClientDataSetVendasFORMA_PAGAMENTO: TFMTBCDField;
    ClientDataSetVendasSQLDataSetVendasItens: TDataSetField;
    SQLDataSetVendasItensVENDA_ITENS: TFMTBCDField;
    SQLDataSetVendasItensVENDA: TFMTBCDField;
    SQLDataSetVendasItensPRODUTO: TFMTBCDField;
    SQLDataSetVendasItensQUANTIDADE: TFMTBCDField;
    SQLDataSetVendasItensVALOR_UNITARIO: TFMTBCDField;
    SQLDataSetVendasItensCUSTO: TFMTBCDField;
    SQLDataSetVendasItensVALOR_TOTAL_BRUTO: TFMTBCDField;
    SQLDataSetVendasItensDESCONTO: TFMTBCDField;
    SQLDataSetVendasItensVALOR_TOTAL_LIQUIDO: TFMTBCDField;
    ClientDataSetVendaItensVENDA_ITENS: TFMTBCDField;
    ClientDataSetVendaItensVENDA: TFMTBCDField;
    ClientDataSetVendaItensPRODUTO: TFMTBCDField;
    ClientDataSetVendaItensQUANTIDADE: TFMTBCDField;
    ClientDataSetVendaItensCUSTO: TFMTBCDField;
    ClientDataSetVendaItensVALOR_TOTAL_BRUTO: TFMTBCDField;
    ClientDataSetVendaItensDESCONTO: TFMTBCDField;
    ClientDataSetVendaItensVALOR_TOTAL_LIQUIDO: TFMTBCDField;
    ClientDataSetVendaItensVALOR_UNITARIO: TFMTBCDField;
    SQLQueryVendas: TSQLQuery;
    SQLQueryVendasVENDA: TFMTBCDField;
    SQLDataSetFORMAS_PAGAMENTOS: TSQLDataSet;
    DataSetProviderFORMAS_PAGAMENTOS: TDataSetProvider;
    ClientDataSetFORMAS_PAGAMENTOS: TClientDataSet;
    SQLDataSetFORMAS_PAGAMENTOSFORMA_PAGAMENTO: TFMTBCDField;
    SQLDataSetFORMAS_PAGAMENTOSDESCRICAO: TStringField;
    ClientDataSetFORMAS_PAGAMENTOSFORMA_PAGAMENTO: TFMTBCDField;
    ClientDataSetFORMAS_PAGAMENTOSDESCRICAO: TStringField;
    SQLDataSetVendasCANCELADA: TStringField;
    ClientDataSetVendasCANCELADA: TStringField;
    SQLDataSetVendasConsulta: TSQLDataSet;
    DataSetProviderVendasConsulta: TDataSetProvider;
    ClientDataSetVendasConsulta: TClientDataSet;
    SQLDataSetVendasConsultaVENDA: TFMTBCDField;
    SQLDataSetVendasConsultaDATA_HORA: TSQLTimeStampField;
    SQLDataSetVendasConsultaCLIENTE: TStringField;
    SQLDataSetVendasConsultaVENDEDOR: TStringField;
    SQLDataSetVendasConsultaFORMA_PAGAMENTO: TStringField;
    SQLDataSetVendasConsultaCANCELADA: TStringField;
    ClientDataSetVendasConsultaVENDA: TFMTBCDField;
    ClientDataSetVendasConsultaDATA_HORA: TSQLTimeStampField;
    ClientDataSetVendasConsultaCLIENTE: TStringField;
    ClientDataSetVendasConsultaVENDEDOR: TStringField;
    ClientDataSetVendasConsultaFORMA_PAGAMENTO: TStringField;
    ClientDataSetVendasConsultaCANCELADA: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UPrincipal;

{$R *.dfm}

procedure TDataModule1.DataModuleCreate(Sender: TObject);
begin
try
//     SQLConnection1.Close;
//     SQLConnection1.Params.Clear;
//     SQLConnection1.ConnectionName:='DATABASE'; //Nome do Driver válido ***
//     SQLConnection1.DriverName:='MSSQL';
//     SQLConnection1.LoadParamsOnConnect:=False;
//     SQLConnection1.LoadParamsFromIniFile(GetCurrentDir+'\configBanco.ini');
//     SQLConnection1.LoginPrompt:=false;
//     SQLConnection1.Connected := true;

finally
end;
end;

end.
