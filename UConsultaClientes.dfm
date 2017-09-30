inherited FormConsultaClientes: TFormConsultaClientes
  Caption = 'FormConsultaClientes'
  ExplicitWidth = 617
  ExplicitHeight = 314
  PixelsPerInch = 96
  TextHeight = 13
  inherited DBGrid1: TDBGrid
    DataSource = DataSource
  end
  inherited DataSource: TDataSource
    DataSet = DataModule1.ClientDataSetClientes
  end
end
