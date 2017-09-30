inherited FormConsultaProdutosPDV: TFormConsultaProdutosPDV
  Caption = 'Produtos'
  PixelsPerInch = 96
  TextHeight = 13
  inherited DBGrid1: TDBGrid
    Height = 234
    DataSource = DataSource
  end
  inherited DataSource: TDataSource
    AutoEdit = False
    DataSet = DataModule1.ClientDataSetProdutos
  end
end
