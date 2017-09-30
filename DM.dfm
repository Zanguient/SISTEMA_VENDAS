object DataModule1: TDataModule1
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 601
  Width = 841
  object SQLDataSetClientes: TSQLDataSet
    SchemaName = 'SA'
    GetMetadata = False
    CommandText = 'SELECT * FROM CLIENTES'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection2
    Left = 56
    Top = 96
    object SQLDataSetClientesCLIENTE: TFMTBCDField
      FieldName = 'CLIENTE'
      ReadOnly = True
      Precision = 15
      Size = 0
    end
    object SQLDataSetClientesNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 30
    end
    object SQLDataSetClientesDATA_NASCIMENTO: TDateField
      FieldName = 'DATA_NASCIMENTO'
      EditMask = '!99/99/0000;1;_'
    end
    object SQLDataSetClientesCPF: TStringField
      FieldName = 'CPF'
      EditMask = '000.000.000-00;1;_'
      Size = 14
    end
    object SQLDataSetClientesDDD: TFMTBCDField
      FieldName = 'DDD'
      Precision = 3
      Size = 0
    end
    object SQLDataSetClientesTELEFONE: TFMTBCDField
      FieldName = 'TELEFONE'
      Precision = 9
      Size = 0
    end
    object SQLDataSetClientesEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 60
    end
    object SQLDataSetClientesUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object SQLDataSetClientesCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 15
    end
    object SQLDataSetClientesBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 15
    end
    object SQLDataSetClientesRUA: TStringField
      FieldName = 'RUA'
      Size = 40
    end
    object SQLDataSetClientesCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object SQLDataSetClientesNUMERO: TFMTBCDField
      FieldName = 'NUMERO'
      Precision = 7
      Size = 0
    end
  end
  object DataSetProviderClientes: TDataSetProvider
    DataSet = SQLDataSetClientes
    Left = 184
    Top = 96
  end
  object ClientDataSetClientes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProviderClientes'
    Left = 312
    Top = 96
    object ClientDataSetClientesCLIENTE: TFMTBCDField
      FieldName = 'CLIENTE'
      ReadOnly = True
      Precision = 15
      Size = 0
    end
    object ClientDataSetClientesNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 30
    end
    object ClientDataSetClientesDATA_NASCIMENTO: TDateField
      FieldName = 'DATA_NASCIMENTO'
      EditMask = '!99/99/0000;1;_'
    end
    object ClientDataSetClientesCPF: TStringField
      FieldName = 'CPF'
      EditMask = '000.000.000-00;1;_'
      Size = 14
    end
    object ClientDataSetClientesDDD: TFMTBCDField
      FieldName = 'DDD'
      Precision = 3
      Size = 0
    end
    object ClientDataSetClientesTELEFONE: TFMTBCDField
      FieldName = 'TELEFONE'
      Precision = 9
      Size = 0
    end
    object ClientDataSetClientesEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 60
    end
    object ClientDataSetClientesUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object ClientDataSetClientesCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 15
    end
    object ClientDataSetClientesBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 15
    end
    object ClientDataSetClientesRUA: TStringField
      FieldName = 'RUA'
      Size = 40
    end
    object ClientDataSetClientesCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object ClientDataSetClientesNUMERO: TFMTBCDField
      FieldName = 'NUMERO'
      Precision = 7
      Size = 0
    end
  end
  object SQLDataSetProdutos: TSQLDataSet
    SchemaName = 'SA'
    GetMetadata = False
    CommandText = 'SELECT * FROM PRODUTOS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection2
    Left = 56
    Top = 176
    object SQLDataSetProdutosPRODUTO: TFMTBCDField
      FieldName = 'PRODUTO'
      ReadOnly = True
      Precision = 18
      Size = 0
    end
    object SQLDataSetProdutosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object SQLDataSetProdutosMARCA: TFMTBCDField
      FieldName = 'MARCA'
      Precision = 15
      Size = 0
    end
    object SQLDataSetProdutosPRECO_CUSTO: TFMTBCDField
      DisplayLabel = 'PRECO DE CUSTO'
      FieldName = 'PRECO_CUSTO'
      currency = True
      Precision = 15
      Size = 2
    end
    object SQLDataSetProdutosPRECO_VENDA: TFMTBCDField
      DisplayLabel = 'PRECO DE VENDA'
      FieldName = 'PRECO_VENDA'
      currency = True
      Precision = 15
      Size = 2
    end
    object SQLDataSetProdutosATIVO: TStringField
      FieldName = 'ATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object DataSetProviderProdutos: TDataSetProvider
    DataSet = SQLDataSetProdutos
    Left = 184
    Top = 176
  end
  object ClientDataSetProdutos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProviderProdutos'
    Left = 312
    Top = 176
    object ClientDataSetProdutosPRODUTO: TFMTBCDField
      FieldName = 'PRODUTO'
      ReadOnly = True
      Precision = 18
      Size = 0
    end
    object ClientDataSetProdutosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object ClientDataSetProdutosMARCA: TFMTBCDField
      FieldName = 'MARCA'
      Precision = 15
      Size = 0
    end
    object ClientDataSetProdutosPRECO_CUSTO: TFMTBCDField
      DisplayLabel = 'PRECO DE CUSTO'
      FieldName = 'PRECO_CUSTO'
      currency = True
      Precision = 15
      Size = 2
    end
    object ClientDataSetProdutosPRECO_VENDA: TFMTBCDField
      DisplayLabel = 'PRECO DE VENDA'
      FieldName = 'PRECO_VENDA'
      currency = True
      Precision = 15
      Size = 2
    end
    object ClientDataSetProdutosATIVO: TStringField
      FieldName = 'ATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object SQLConnection1: TSQLConnection
    DriverName = 'MSSQL'
    LoginPrompt = False
    Params.Strings = (
      '=')
    Left = 64
    Top = 24
  end
  object SQLConnection2: TSQLConnection
    ConnectionName = 'SISTEMAVENDA'
    DriverName = 'MSSQL'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=MSSQL'
      'SchemaOverride=%.dbo'
      'DriverUnit=Data.DBXMSSQL'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DBXCommonDriver180.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=18.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXMsSqlMetaDataCommandFactory,DbxMSSQLDr' +
        'iver180.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXMsSqlMetaDataCommandFact' +
        'ory,Borland.Data.DbxMSSQLDriver,Version=18.0.0.0,Culture=neutral' +
        ',PublicKeyToken=91d62ebb5b0d1b1b'
      'LibraryName=dbxmss.dll'
      'VendorLib=sqlncli10.dll'
      'VendorLibWin64=sqlncli10.dll'
      'HostName=DESKTOP-FERHKMN\SQLEXPRESS'
      'Database=SISTEMAVENDA'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'IsolationLevel=ReadCommitted'
      'OSAuthentication=False'
      'PrepareSQL=True'
      'User_Name=SA'
      'Password=WES'
      'BlobSize=-1'
      'ErrorResourceFile='
      'OS Authentication=False'
      'Prepare SQL=False')
    Left = 192
    Top = 32
  end
  object DSmasterDetail_VENDAS_VENDASITENS: TDataSource
    DataSet = SQLDataSetVendas
    Left = 576
    Top = 280
  end
  object DataSourceVendas: TDataSource
    DataSet = ClientDataSetVendas
    Left = 504
    Top = 232
  end
  object DataSourceVendas_Itens: TDataSource
    DataSet = SQLDataSetVendasItens
    Left = 512
    Top = 352
  end
  object SQLDataSetVendas: TSQLDataSet
    SchemaName = 'SA'
    GetMetadata = False
    CommandText = 'SELECT * FROM VENDAS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection2
    Left = 40
    Top = 272
    object SQLDataSetVendasVENDA: TFMTBCDField
      FieldName = 'VENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Precision = 15
      Size = 0
    end
    object SQLDataSetVendasDATA_HORA: TSQLTimeStampField
      FieldName = 'DATA_HORA'
      ReadOnly = True
    end
    object SQLDataSetVendasCLIENTE: TFMTBCDField
      FieldName = 'CLIENTE'
      Precision = 15
      Size = 0
    end
    object SQLDataSetVendasVENDEDOR: TFMTBCDField
      FieldName = 'VENDEDOR'
      Required = True
      Precision = 15
      Size = 0
    end
    object SQLDataSetVendasFORMA_PAGAMENTO: TFMTBCDField
      FieldName = 'FORMA_PAGAMENTO'
      Required = True
      Precision = 15
      Size = 0
    end
    object SQLDataSetVendasCANCELADA: TStringField
      FieldName = 'CANCELADA'
      Size = 1
    end
  end
  object SQLDataSetVendasItens: TSQLDataSet
    SchemaName = 'SA'
    GetMetadata = False
    CommandText = 'SELECT * FROM VENDAS_ITENS WHERE VENDA = :VENDA'
    DataSource = DSmasterDetail_VENDAS_VENDASITENS
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFMTBcd
        Name = 'VENDA'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection2
    Left = 50
    Top = 344
    object SQLDataSetVendasItensVENDA_ITENS: TFMTBCDField
      FieldName = 'VENDA_ITENS'
      Precision = 15
      Size = 0
    end
    object SQLDataSetVendasItensVENDA: TFMTBCDField
      FieldName = 'VENDA'
      Precision = 15
      Size = 0
    end
    object SQLDataSetVendasItensPRODUTO: TFMTBCDField
      FieldName = 'PRODUTO'
      Required = True
      Precision = 15
      Size = 0
    end
    object SQLDataSetVendasItensQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Required = True
      Precision = 15
      Size = 0
    end
    object SQLDataSetVendasItensVALOR_UNITARIO: TFMTBCDField
      FieldName = 'VALOR_UNITARIO'
      Required = True
      Precision = 15
      Size = 0
    end
    object SQLDataSetVendasItensCUSTO: TFMTBCDField
      FieldName = 'CUSTO'
      Precision = 15
      Size = 0
    end
    object SQLDataSetVendasItensVALOR_TOTAL_BRUTO: TFMTBCDField
      FieldName = 'VALOR_TOTAL_BRUTO'
      Required = True
      Precision = 15
      Size = 0
    end
    object SQLDataSetVendasItensDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Required = True
      Precision = 15
      Size = 0
    end
    object SQLDataSetVendasItensVALOR_TOTAL_LIQUIDO: TFMTBCDField
      FieldName = 'VALOR_TOTAL_LIQUIDO'
      Required = True
      Precision = 15
      Size = 0
    end
  end
  object DataSetProviderVendas: TDataSetProvider
    DataSet = SQLDataSetVendas
    Left = 176
    Top = 272
  end
  object ClientDataSetVendas: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProviderVendas'
    Left = 296
    Top = 272
    object ClientDataSetVendasVENDA: TFMTBCDField
      FieldName = 'VENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Precision = 15
      Size = 0
    end
    object ClientDataSetVendasDATA_HORA: TSQLTimeStampField
      FieldName = 'DATA_HORA'
      ReadOnly = True
    end
    object ClientDataSetVendasCLIENTE: TFMTBCDField
      FieldName = 'CLIENTE'
      Precision = 15
      Size = 0
    end
    object ClientDataSetVendasVENDEDOR: TFMTBCDField
      FieldName = 'VENDEDOR'
      Required = True
      Precision = 15
      Size = 0
    end
    object ClientDataSetVendasFORMA_PAGAMENTO: TFMTBCDField
      FieldName = 'FORMA_PAGAMENTO'
      Required = True
      Precision = 15
      Size = 0
    end
    object ClientDataSetVendasSQLDataSetVendasItens: TDataSetField
      FieldName = 'SQLDataSetVendasItens'
    end
    object ClientDataSetVendasCANCELADA: TStringField
      FieldName = 'CANCELADA'
      Size = 1
    end
  end
  object ClientDataSetVendaItens: TClientDataSet
    Active = True
    Aggregates = <>
    DataSetField = ClientDataSetVendasSQLDataSetVendasItens
    Params = <>
    Left = 296
    Top = 344
    object ClientDataSetVendaItensVENDA_ITENS: TFMTBCDField
      FieldName = 'VENDA_ITENS'
      Precision = 15
      Size = 0
    end
    object ClientDataSetVendaItensVENDA: TFMTBCDField
      FieldName = 'VENDA'
      Precision = 15
      Size = 0
    end
    object ClientDataSetVendaItensPRODUTO: TFMTBCDField
      FieldName = 'PRODUTO'
      Required = True
      Precision = 15
      Size = 0
    end
    object ClientDataSetVendaItensQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Required = True
      Precision = 15
      Size = 0
    end
    object ClientDataSetVendaItensCUSTO: TFMTBCDField
      FieldName = 'CUSTO'
      Precision = 15
      Size = 0
    end
    object ClientDataSetVendaItensVALOR_TOTAL_BRUTO: TFMTBCDField
      FieldName = 'VALOR_TOTAL_BRUTO'
      Required = True
      Precision = 15
      Size = 0
    end
    object ClientDataSetVendaItensDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Required = True
      Precision = 15
      Size = 0
    end
    object ClientDataSetVendaItensVALOR_TOTAL_LIQUIDO: TFMTBCDField
      FieldName = 'VALOR_TOTAL_LIQUIDO'
      Required = True
      Precision = 15
      Size = 0
    end
    object ClientDataSetVendaItensVALOR_UNITARIO: TFMTBCDField
      FieldName = 'VALOR_UNITARIO'
      Precision = 15
      Size = 0
    end
  end
  object DataSetProviderVendedores: TDataSetProvider
    DataSet = SQLDataSetVendedores
    Left = 576
    Top = 96
  end
  object ClientDataSetVendedores: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProviderVendedores'
    Left = 704
    Top = 96
    object ClientDataSetVendedoresVENDEDOR: TFMTBCDField
      FieldName = 'VENDEDOR'
      Required = True
      Precision = 15
      Size = 0
    end
    object ClientDataSetVendedoresNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 60
    end
  end
  object SQLDataSetVendedores: TSQLDataSet
    GetMetadata = False
    CommandText = 'SELECT * FROM VENDEDORES'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection2
    Left = 456
    Top = 96
    object SQLDataSetVendedoresVENDEDOR: TFMTBCDField
      FieldName = 'VENDEDOR'
      Required = True
      Precision = 15
      Size = 0
    end
    object SQLDataSetVendedoresNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 60
    end
  end
  object SQLQueryVendas: TSQLQuery
    DataSource = DataSourceVendas
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT Ident_Current('#39'VENDAS'#39') AS VENDA')
    SQLConnection = SQLConnection2
    Left = 392
    Top = 272
    object SQLQueryVendasVENDA: TFMTBCDField
      FieldName = 'VENDA'
      Precision = 32
      Size = 0
    end
  end
  object SQLDataSetFORMAS_PAGAMENTOS: TSQLDataSet
    SchemaName = 'SA'
    CommandText = 'SELECT * FROM FORMAS_PAGAMENTOS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection2
    Left = 16
    Top = 432
    object SQLDataSetFORMAS_PAGAMENTOSFORMA_PAGAMENTO: TFMTBCDField
      FieldName = 'FORMA_PAGAMENTO'
      Required = True
      Precision = 15
      Size = 0
    end
    object SQLDataSetFORMAS_PAGAMENTOSDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
    end
  end
  object DataSetProviderFORMAS_PAGAMENTOS: TDataSetProvider
    DataSet = SQLDataSetFORMAS_PAGAMENTOS
    Left = 184
    Top = 432
  end
  object ClientDataSetFORMAS_PAGAMENTOS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProviderFORMAS_PAGAMENTOS'
    Left = 336
    Top = 432
    object ClientDataSetFORMAS_PAGAMENTOSFORMA_PAGAMENTO: TFMTBCDField
      FieldName = 'FORMA_PAGAMENTO'
      Required = True
      Precision = 15
      Size = 0
    end
    object ClientDataSetFORMAS_PAGAMENTOSDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
    end
  end
  object SQLDataSetVendasConsulta: TSQLDataSet
    SchemaName = 'SA'
    CommandText = 
      'SELECT '#13#10'A.VENDA, '#13#10'A.DATA_HORA,'#13#10'B.NOME         AS CLIENTE,'#13#10'D.' +
      'NOME         AS VENDEDOR,'#13#10'C.DESCRICAO    AS FORMA_PAGAMENTO,'#13#10'A' +
      '.CANCELADA'#13#10#13#10'FROM VENDAS                  A WITH(NOLOCK)'#13#10'LEFT ' +
      'JOIN CLIENTES           B WITH(NOLOCK) ON B.CLIENTE          = A' +
      '.CLIENTE'#13#10'LEFT JOIN FORMAS_PAGAMENTOS  C WITH(NOLOCK) ON C.FORMA' +
      '_PAGAMENTO  = A.FORMA_PAGAMENTO'#13#10'LEFT JOIN VENDEDORES         D ' +
      'WITH(NOLOCK) ON D.VENDEDOR         = A.VENDEDOR'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection2
    Left = 376
    Top = 536
    object SQLDataSetVendasConsultaVENDA: TFMTBCDField
      FieldName = 'VENDA'
      Required = True
      Precision = 15
      Size = 0
    end
    object SQLDataSetVendasConsultaDATA_HORA: TSQLTimeStampField
      FieldName = 'DATA_HORA'
      Required = True
    end
    object SQLDataSetVendasConsultaCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 30
    end
    object SQLDataSetVendasConsultaVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 60
    end
    object SQLDataSetVendasConsultaFORMA_PAGAMENTO: TStringField
      FieldName = 'FORMA_PAGAMENTO'
    end
    object SQLDataSetVendasConsultaCANCELADA: TStringField
      FieldName = 'CANCELADA'
      Size = 1
    end
  end
  object DataSetProviderVendasConsulta: TDataSetProvider
    DataSet = SQLDataSetVendasConsulta
    Left = 536
    Top = 536
  end
  object ClientDataSetVendasConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProviderVendasConsulta'
    Left = 696
    Top = 536
    object ClientDataSetVendasConsultaVENDA: TFMTBCDField
      FieldName = 'VENDA'
      Required = True
      Precision = 15
      Size = 0
    end
    object ClientDataSetVendasConsultaDATA_HORA: TSQLTimeStampField
      FieldName = 'DATA_HORA'
      Required = True
    end
    object ClientDataSetVendasConsultaCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 30
    end
    object ClientDataSetVendasConsultaVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 60
    end
    object ClientDataSetVendasConsultaFORMA_PAGAMENTO: TStringField
      FieldName = 'FORMA_PAGAMENTO'
    end
    object ClientDataSetVendasConsultaCANCELADA: TStringField
      FieldName = 'CANCELADA'
      Size = 1
    end
  end
end
