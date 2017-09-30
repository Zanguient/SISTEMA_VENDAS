inherited FormConsultaProdutos: TFormConsultaProdutos
  Caption = 'Consulta de Produtos'
  ExplicitWidth = 617
  ExplicitHeight = 314
  PixelsPerInch = 96
  TextHeight = 13
  inherited DBGrid1: TDBGrid
    DataSource = DataSource
    OnDblClick = DBGrid1DblClick
  end
  inherited DataSource: TDataSource
    DataSet = DataModule1.ClientDataSetProdutos
  end
end
